import django_filters
from rest_framework import viewsets

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import *
from rest_framework.permissions import IsAuthenticated


class HuohualuSerializer(CustomModelSerializer):
    """
    火化炉序列化器
    """
    class Meta:
        model = crematorModel
        fields = '__all__'
        read_only_fields = ['id']


class CreateHuohualuSerializer(CustomModelSerializer):
    """
    创建更新火化炉序列化器
    """
    class Meta:
        model = crematorModel
        fields = '__all__'
        read_only_fields = ['id']

    def create(self, validated_data):
        print("ver=>",validated_data)
        return


class filterClass(django_filters.FilterSet):
    startTime = django_filters.DateFilter(field_name='create_datetime', lookup_expr='gte')
    endTime = django_filters.DateFilter(field_name='create_datetime', lookup_expr='lte')

    class Meta:
        model = crematorModel
        fields = ['endTime', 'startTime',"hhl2",'hhl1']



class HuohualuViewSet(CustomModelViewSet):
    """
    火化炉接口
    """
    permission_classes = [IsAuthenticated]
    queryset = crematorModel.objects.all().order_by("-id")
    serializer_class = HuohualuSerializer
    create_serializer_class = CreateHuohualuSerializer
    update_serializer_class = CreateHuohualuSerializer
    filterset_class = filterClass
    # search_fields = ["hhl2",'hhl1']