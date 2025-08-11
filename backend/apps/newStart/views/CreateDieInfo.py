import django_filters
from openpyxl.descriptors.excel import Relation
from rest_framework import serializers
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import *



class relationSerializer(CustomModelSerializer):
    class Meta:
        fields = "__all__"
        model = RelationModel
        read_only_fields = ['id']


class DieInfoSerializer(CustomModelSerializer):
    """
    逝者信息序列化器
    """
    relation = relationSerializer(read_only=True,many=True)
    class Meta:
        model = Departed
        fields = "__all__"
        read_only_fields = ["id"]


class CreateDieInfoSerializer(CustomModelSerializer):
    """
    创建、更新序列化器
    """
    dieInfo = serializers.DictField(required=True, write_only=True)
    dieRelation = serializers.DictField(required=True, write_only=True)
    relation = relationSerializer(read_only=True,many=True)
    class Meta:
        model = Departed
        fields = "__all__"
        read_only_fields = ["id"]

    def create(self, validated_data):
        dieInfo = validated_data['dieInfo']
        dieRelation = validated_data['dieRelation']

        try:
            if dieInfo["diEx2"] is None:
                raise TypeError("名字是必填项")
            dieInfos = Departed.objects.create(**dieInfo)
            if dieInfo["ddmEx16"]=='冷藏':
                RefrigeratedModel.objects.create(
                    diEx = dieInfos
                )

            elif  RefrigeratedModel.objects.filter(diEx=dieInfos):
                RefrigeratedModel.objects.filter(diEx=dieInfos).delete()

            if dieInfo['ddmEx16'] =="火化":
                CremationModel.objects.create(
                    diEx = dieInfos
                )


                '''
                删除QuerySet对象：delete()
                取QuerySet对象值： a.b
                
                删除Object对象 ： remove()
                取Object对象值： a.b
                
                字典取值   a['b']
                
                ....filter(..).first()  --->Object
                ....filter(..)          --->QuerySet
                
                当查询预期返回单个对象时，Django 会返回一个模型实例（object）
                当查询预期返回多个对象时，Django 会返回一个 QuerySet
                
                QuerySet是由可能多个object组成的  一个数组[] 一个对象 {}
                '''


            if dieRelation is not None and dieRelation and dieInfos: # dieRelation不为None且 不为空
                dieRelation['departed'] = dieInfos
                RelationModel.objects.create(**dieRelation)

                return dieInfos

            raise TypeError("创建失败")

        except Exception as e:
            raise TypeError("创建逝者信息失败")

    def update(self, instance, validated_data):
        dieInfo = validated_data.get('dieInfo', {}) #新的数据
        dieRelation = validated_data.get('dieRelation', {})
        old_ddmEx16 = instance.ddmEx16  # 旧的数据

        try:
            # 更新主对象
            if dieInfo:
                for key, value in dieInfo.items():
                    #设置对象
                    setattr(instance, key, value)
                instance.save()

                if old_ddmEx16 != "冷藏" and dieInfo['ddmEx16']=="冷藏":
                    RefrigeratedModel.objects.create(
                        diEx=instance
                    )
                elif RefrigeratedModel.objects.filter(diEx=instance) and dieInfo["ddmEx16"] != '冷藏':
                     RefrigeratedModel.objects.filter(diEx=instance).delete()

                if old_ddmEx16 != "火化" and dieInfo['ddmEx16']=="火化":
                    CremationModel.objects.create(
                        diEx=instance
                    )
                elif RefrigeratedModel.objects.filter(diEx=instance) and dieInfo["ddmEx16"] != '火化':
                     CremationModel.objects.filter(diEx=instance).delete()

            # 更新关联对象
            if dieRelation:
                # 获取关联对象（如果存在则更新，不存在则创建）
                relation_instance = instance.relation.first()

                if relation_instance:
                    for key, value in dieRelation.items():
                        setattr(relation_instance, key, value)
                    relation_instance.save()
                else:
                    # 不存在关联则创建
                    RelationModel.objects.create(departed=instance, **dieRelation)

            # 刷新实例并返回
            instance.refresh_from_db()

            return instance

        except Exception as e:
            # logger.error(f"更新逝者信息失败: {str(e)}")
            raise serializers.ValidationError(f"更新逝者信息失败: {str(e)}")


    def to_internal_value(self, data):

        data['diEx2'] = data['dieInfo'].get("diEx2")

        return super().to_internal_value(data)

    # def to_representation(self, instance):
    #     instance.diEx3 = instance.get_diEx3_display()
    #     return super().to_representation(instance)


class filterClass(django_filters.FilterSet):
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')
    name = django_filters.CharFilter(field_name="diEx2", lookup_expr='icontains')

    class Meta:
        model = Departed
        fields = ['startTime', 'endTime', 'name']


class DieInfoSetView(CustomModelViewSet):
    """
    逝者接口
    """
    permission_classes = [IsAuthenticated]
    queryset = Departed.objects.all().order_by("-id")
    serializer_class = DieInfoSerializer
    create_serializer_class = CreateDieInfoSerializer
    update_serializer_class = CreateDieInfoSerializer
    filterset_class = filterClass
