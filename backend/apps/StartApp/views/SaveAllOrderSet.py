import random
import time

import django_filters
from rest_framework import status, serializers
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.StartApp.models import *

class OrderDetailModelSerializer(CustomModelSerializer):
    """
    订单详情序列化器
    """
    class Meta:
        model = OrderDetailModel
        fields = "__all__"
        read_only_fields = ["id"]

class SaveAllOrderSetSerializer(CustomModelSerializer):
    """
    订单序列化器
    """
    order_detail = OrderDetailModelSerializer(many=True)
    class Meta:
        model = OrderModel
        fields = "__all__"
        read_only_fields = ["id"]



class CreateSaveAllOrderSerializer(CustomModelSerializer):
    """
    创建/更新订单序列化器
    """
    Cids = serializers.ListField(child=serializers.IntegerField(),required=True,write_only=True)
    Aid = serializers.IntegerField(required=True,write_only=True)
    total = serializers.FloatField(required=False,write_only=True)
    class Meta:
        model = OrderModel
        fields = ['Cids',"Aid",'total']
        read_only_fields = ["id"]

    def create(self, validated_data):

        userId = self.request.user
        AddressId = validated_data.get("Aid")
        CarIds = validated_data.get("Cids")
        cart_data = CartModel.objects.filter(ca_t1 = userId,ca_t2__in = CarIds)
        Address_data = AddressModel.objects.filter(id = AddressId).first()
        print("Address_data=>",Address_data)
        # 判断
        if not cart_data:
            raise TypeError("购物车数据不存在")
        if not Address_data:
            raise TypeError("收货地址数据不正确")

        or_m4  =  0  # 记录前端传的总价
        if validated_data.get("total"):
            or_m4 = validated_data.get("total")
        #先创建订单
        order = OrderModel.objects.create(
            or_Uid = userId,
            or_Aid = Address_data,
            or_Num = str(int(time.time()))+str(self.request.user.id)+ str(random.randrange(10000, 100000)),
            or_m3 = 1,
            or_m4 = or_m4
        )

        tatol = 0 #  后端记录总价
        # 循环用户选择的购物车中的商品数据
        for cart in cart_data:
            tatol += cart.ca_t2.cms_t3 * cart.ca_t2.cms_t8 * cart.ca_t3
            # 如果下单数量超过库存 则删除订单
            if cart.ca_t3 >  cart.ca_t2.cms_t5:
                order.delete()
                raise TypeError("商品数量超出库存")
            # 创建订单详情
            OrderDetailModel.objects.create(
                od_t1 = cart.ca_t2,
                od_t2 = order,
                od_t3 = cart.ca_t3,
                od_t4 = cart.ca_t2.cms_t3,
                od_t5 = cart.ca_t2.cms_t8,
                od_t6 = cart.ca_t2.cms_t3 * cart.ca_t2.cms_t8 * cart.ca_t3
            )
        # 如果下单数量没有超过库存
        if tatol:
            #  判断总价是否正确
           if tatol != or_m4:
               # 如果订单总价计算错误，则删除订单，并返回错误
               # 因为订单和订单详情是深度绑定关系，所以删除订单，则删除订单详情
               order.delete()
               raise TypeError(f"订单总价错误{tatol}")

        # 再次循环购物车数据，为了减少库存
        for cart in cart_data:
            cart.ca_t2.cms_t5 = cart.ca_t2.cms_t5 - cart.ca_t3
            if cart.ca_t2.cms_t5 ==0:
                cart.ca_t2.cms_t9 = 2
            cart.ca_t2.save()
            cart.delete()


        return Response({"detail": "订单创建成功"}, status=status.HTTP_201_CREATED)


class OrderFilter(django_filters.FilterSet):
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')
    name = django_filters.CharFilter(field_name="or_Uid.name", lookup_expr='icontains')

    class  Meta:
        model = OrderModel
        fields = ['startTime', 'endTime', 'name']


class SaveAllOrderSetView(CustomModelViewSet):
    """
    订单接口
    """
    permission_classes = [IsAuthenticated]
    queryset = OrderModel.objects.all().order_by("-id")
    serializer_class = SaveAllOrderSetSerializer
    create_serializer_class = CreateSaveAllOrderSerializer
    update_serializer_class = CreateSaveAllOrderSerializer
    filter_class = OrderFilter








