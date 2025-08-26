import django_filters
from rest_framework import serializers
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.newStart.models import *


class relationSerial(CustomModelSerializer):
    class Meta:
        model = RelationModel
        fields = "__all__"
        read_only_fields = ['id']


class DieInfoSerial(CustomModelSerializer):
    """
    逝者信息序列化器
    """
    relation = relationSerial(read_only=True, many=True)

    class Meta:
        model = Departed
        fields = "__all__"
        read_only_fields = ["id"]


class crematorSerial(CustomModelSerializer):
    """
    炉信息序列化器
    """
    class Meta:
        model = crematorModel
        fields = "__all__"
        read_only_fields = ["id"]

    def to_representation(self, instance):

        instance.hhl9 = instance.get_hhl9_display()
        print("ins111====>", instance)
        return super().to_representation(instance)



class CremationSerializer(CustomModelSerializer):
    """
    火化调度序列化器
    """

    diEx = DieInfoSerial(read_only=True)
    hhlId = crematorSerial(read_only=True)
    hhlId_id = serializers.IntegerField(write_only=True, required=False)
    class Meta:
        model = CremationModel
        fields = '__all__'
        read_only_fields = ["id"]

    def update(self, instance, validated_data):
        print("validated_data1=>",validated_data)

        dfiEx3 = validated_data.get('dfiEx3', None)
        hhl_id = validated_data.pop('hhlId_id', None)
        print("validated_data2=>",validated_data)
        print("hhl_id=>",hhl_id)
        try:
            hhl = crematorModel.objects.filter(id=hhl_id).first()
            if not hhl:
                return TypeError("未找到该炉")
            if dfiEx3 == 2:
                hhl.hhl9 = 2
                hhl.save()
                return super().update(instance, validated_data)
            hhl.hhl9 = 1
            hhl.save()

            return super().update(instance, validated_data)

        except Exception as e:
            raise TypeError(e)



class filterClass(django_filters.FilterSet):
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')
    name = django_filters.CharFilter(field_name="diEx__diEx2", lookup_expr='icontains')
    dfiEx3 = django_filters.CharFilter(field_name="dfiEx3", lookup_expr='icontains')

    class Meta:
        model = CremationModel
        fields = ['startTime', 'endTime', 'name', 'dfiEx3']


class CremationModelViewSet(CustomModelViewSet):
    """
    火化调度接口
    """
    permission_classes = [IsAuthenticated]
    serializer_class = CremationSerializer
    queryset = CremationModel.objects.all().order_by("-id")
    update_serializer_class = CremationSerializer
    filterset_class = filterClass
