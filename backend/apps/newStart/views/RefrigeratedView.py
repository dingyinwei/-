import django_filters
from rest_framework import viewsets, serializers
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.newStart.models import *


class FreezerSerializer(CustomModelSerializer):
    """
    冷藏柜序列化器
    """
    class Meta:
        model = FreezerModel
        fields = "__all__"
        read_only_fields = ["id"]


class relationSeria(CustomModelSerializer):
    class Meta:
        fields = "__all__"
        model = RelationModel
        read_only_fields = ['id']

class DieInfoSeria(CustomModelSerializer):
    """
    逝者信息序列化器
    """
    relation = relationSeria(read_only=True,many=True)
    class Meta:
        model = Departed
        fields = "__all__"
        read_only_fields = ["id"]


class RefrigeratedSerializer(CustomModelSerializer):
    """
    冷藏信息序列化
    """
    diEx = DieInfoSeria(read_only=True)
    lcg = FreezerSerializer(read_only=True)

    class Meta:
        model = RefrigeratedModel
        fields = "__all__"
        read_only_fields = ["id"]


class UpdataRefrigeratedSerializer(CustomModelSerializer):
    """
    冷藏信息更新接口
    """
    diEx = DieInfoSeria(read_only=True)
    lcg = FreezerSerializer(read_only=True)
    lcg_id = serializers.IntegerField(write_only=True, required=False)
    class Meta:
        model = RefrigeratedModel
        fields = "__all__"
        read_only_fields = ["id"]

    def update(self, instance, validated_data):
        print("1121=>",validated_data)
        print("instance=>",instance)
        lcg_id = validated_data.get("lcg_id")
        lcEx8 = validated_data.get("lcEx8")
        try:
            if lcg_id:
                lcg = FreezerModel.objects.get(id=lcg_id)
                if not lcg:
                    return TypeError("冷藏柜不存在")
                elif lcg.dfcEx6==2:
                    return TypeError("冷藏柜正在使用，请选择其他")
                elif lcg.dfcEx3 != "正常":
                    return TypeError("冷藏柜状态异常，请选择其他")
                elif lcg.dfcStatus==2:
                    return TypeError("冷藏柜已删除，请选择其他")

                if lcEx8 == 2:
                    lcg.dfcEx6 = 2
                    instance.lcg = lcg
                    instance.save()
                else:
                    lcg.dfcEx6 = 1
                    instance.lcg = lcg
                    instance.save()


            return super().update(instance, validated_data)

        except Exception as e:
            raise  TypeError(e)


        pass







class filterClass(django_filters.FilterSet):
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')
    '''
    重点重点   如果 RefrigeratedModel 有外键指向 Departed
    '''
    name = django_filters.CharFilter(field_name="diEx__diEx2", lookup_expr='icontains')
    lcEx8 = django_filters.CharFilter(field_name="lcEx8", lookup_expr='icontains')

    class Meta:
        model = RefrigeratedModel
        fields = ['startTime', 'endTime', 'name','lcEx8']


class RefrigeratedViewSet(CustomModelViewSet):
    """
    冷藏接口
    """
    permission_classes = [IsAuthenticated]
    queryset = RefrigeratedModel.objects.all().order_by("-id")
    serializer_class = RefrigeratedSerializer
    update_serializer_class = UpdataRefrigeratedSerializer
    filterset_class = filterClass


