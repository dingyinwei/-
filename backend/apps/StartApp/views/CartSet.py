from rest_framework.exceptions import APIException
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.StartApp.models import CartModel, Commodity


class CommoditySerializersr(CustomModelSerializer):
    """
    商品-序列化器
    """

    class Meta:
        model = Commodity
        fields = "__all__"


class CartModelSerializer(CustomModelSerializer):
    """
    购物车-序列化器
    """

    ca_t2 = CommoditySerializersr()

    class Meta:
        model = CartModel
        fields = "__all__"
        read_only_fields = ["id"]


class CreateCartModelSerializer(CustomModelSerializer):
    """
    购物车创建时的列化器
    """

    class Meta:
        model = CartModel
        fields = ['ca_t2', 'ca_t3']
        read_only_fields = ["id"]

    def create(self, validated_data):
        ca_t1 = self.context['request'].user
        ca_t2 = validated_data.get('ca_t2')
        cart = CartModel.objects.filter(ca_t1=ca_t1, ca_t2=ca_t2).first()
        if cart:
            cart.ca_t3 += 1
            cart.save()
            return cart

        validated_data['ca_t1'] = ca_t1

        return super().create(validated_data)

    def to_representation(self, instance):
        """
        序列化数据（）返回的数据处理
        """
        return super().to_representation(instance)

    def to_internal_value(self, data):
        """
        反序列化的数据 （） 接口的参数
        """
        ca_t2 = data.get('ca_t2')
        ca_t2 = Commodity.objects.filter(id=ca_t2).first()
        if ca_t2:
            return super().to_internal_value(data)
        raise APIException("商品不存在")


class CartModelViewSet(CustomModelViewSet):
    """
    购物车接口
    """
    queryset = CartModel.objects.all().order_by("-id")
    serializer_class = CartModelSerializer
    create_serializer_class = CreateCartModelSerializer
    update_serializer_class = CreateCartModelSerializer
    filter_fields = ['ca_t3', 'ca_t2']
    permission_classes = [IsAuthenticated]
