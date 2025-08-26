import django_filters

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import *
from rest_framework.permissions import IsAuthenticated



class FreezerSerializer(CustomModelSerializer):
    """
    冷藏柜序列化器
    """
    class Meta:
        model = FreezerModel
        fields = "__all__"
        read_only_fields = ["id"]

    # def to_representation(self, instance):
    #     print("instance=>",instance)
    #     if instance.dfcStatus==2:
    #         return None
    #     return super().to_representation(instance)



class CreateFreezerSerializer(CustomModelSerializer):
    """
    创建/更新冷藏柜序列化器
    """
    class Meta:
        model = FreezerModel
        fields = "__all__"
        read_only_fields = ["id"]


class filterClass(django_filters.FilterSet):
    """
    过滤类
    """
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')

    class Meta:
        model = FreezerModel
        fields = ['endTime', 'startTime',"dfcEx1","dfcEx2","dfcEx3"]




class FreezerSetView(CustomModelViewSet):
    """
    冷藏柜接口
    """
    #重点： 过滤掉 删除的
    queryset = FreezerModel.objects.filter(dfcStatus=1).order_by("-id")
    permission_classes = [IsAuthenticated]
    serializer_class = FreezerSerializer
    create_serializer_class = CreateFreezerSerializer
    update_serializer_class = CreateFreezerSerializer
    filterset_class = filterClass
    # search_fields = ["dfcEx1","dfcEx2","dfcEx3"]

