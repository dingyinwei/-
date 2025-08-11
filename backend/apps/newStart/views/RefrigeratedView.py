import django_filters
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.newStart.models import *

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
    class Meta:
        model = RefrigeratedModel
        fields = "__all__"
        read_only_fields = ["id"]


# class UpdataRefrigeratedSerializer(CustomModelSerializer):
#     """
#     冷藏信息更新接口
#     """
#     class Meta:
#         model = RefrigeratedModel
#         fields = "__all__"
#         read_only_fields = ["id"]



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
    update_serializer_class = RefrigeratedSerializer
    filterset_class = filterClass


