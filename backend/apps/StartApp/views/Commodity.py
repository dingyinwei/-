import django_filters
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.StartApp.models import Commodity


class CommoditySerializer(CustomModelSerializer):
    """
    商品的序列化器
    """
    class Meta:
        model = Commodity
        fields = "__all__"
        read_only_fields = ["id"]


class CreateCommoditySerializer(CustomModelSerializer):
    """
    创建商品的序列化器
    """
    class Meta:
        model = Commodity
        fields = "__all__"
        read_only_fields = ["id"]


class CommodityModelFilter(django_filters.FilterSet):
    """
    商品过滤器
    """
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr="gte")
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr="lte")
    class Meta:
        model = Commodity
        fields = ['cms_t1', 'cms_t7', 'startTime', 'endTime']



class CommodityViewSet(CustomModelViewSet):
    """
    商品接口
    """
    permission_classes = [IsAuthenticated]
    queryset = Commodity.objects.all().order_by("-id")
    serializer_class = CommoditySerializer
    create_serializer_class = CreateCommoditySerializer
    update_serializer_class = CreateCommoditySerializer
    search_fields = ['cms_t1', 'cms_t7']
    filterset_class = CommodityModelFilter

