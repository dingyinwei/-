"""预约服务接口"""
import django_filters
from rest_framework import serializers
from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import *
from rest_framework.permissions import IsAuthenticated



class ReservationSerialzer(CustomModelSerializer):
    """
    预约服务序列化器
    """
    class Meta:
        model = ReservationModel
        fields = "__all__"
        read_only_fields = ("id",)

    def to_representation(self, instance):
        instance.daEx9 = instance.get_daEx9_display()
        return super().to_representation(instance)



class CreateUpdateReservationSerializer(CustomModelSerializer):
    """
    创建/更新序列化器
    """
    class Meta:
        model = ReservationModel
        fields = "__all__"
        
    def to_representation(self, instance):
        instance.daEx9 = instance.get_daEx9_display()
        return super().to_representation(instance)


class ReservationFilter(django_filters.FilterSet):
    """
    请求中查询内容
    """
    startTime = django_filters.DateTimeFilter(field_name="startTime", lookup_expr="gte")
    endTime = django_filters.DateTimeFilter(field_name="endTime", lookup_expr="lte")
    daEx8 = django_filters.CharFilter(field_name="daEx8", lookup_expr="icontains")
    class Meta:
        model = ReservationModel
        fields = ["startTime", "endTime", "daEx8"]




class ReservationViewSet(CustomModelViewSet):
    """
    预约服务接口
    """
    permission_classes = [IsAuthenticated]
    queryset = ReservationModel.objects.all().order_by("-id")
    serializer_class = ReservationSerialzer
    create_serializer_class = CreateUpdateReservationSerializer
    filterset_class = ReservationFilter





