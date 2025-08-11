import django_filters
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.newStart.models import *

class relationSerial(CustomModelSerializer):
    class Meta:
        fields = "__all__"
        model = RelationModel
        read_only_fields = ['id']

class DieInfoSerial(CustomModelSerializer):
    """
    逝者信息序列化器
    """
    relation = relationSerial(read_only=True,many=True)
    class Meta:
        model = Departed
        fields = "__all__"
        read_only_fields = ["id"]



class CremationSerializer(CustomModelSerializer):
    """
    火化调度序列化器
    """

    diEx = DieInfoSerial(read_only=True)

    class Meta:
        model = CremationModel
        fields = '__all__'
        read_only_fields = ["id"]


class filterClass(django_filters.FilterSet):
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')
    name = django_filters.CharFilter(field_name="diEx__diEx2", lookup_expr='icontains')
    dfiEx3 = django_filters.CharFilter(field_name="dfiEx3", lookup_expr='icontains')

    class Meta:
        model = CremationModel
        fields = ['startTime', 'endTime', 'name','dfiEx3']




class CremationModelViewSet(CustomModelViewSet):
    """
    火化调度接口
    """
    permission_classes = [IsAuthenticated]
    serializer_class = CremationSerializer
    queryset = CremationModel.objects.all().order_by("-id")
    update_serializer_class = CremationSerializer
    filterset_class = filterClass
