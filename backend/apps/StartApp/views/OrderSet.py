import random
import time

import django_filters
from django.db import transaction
from rest_framework import serializers
from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.StartApp.models import *
from rest_framework.response import Response


class OrderDetailSerializer(CustomModelSerializer):
    """
    订单详情-序列化器
    """

    class Meta:
        model = OrderDetailModel
        fields = "__all__"
        read_only_fields = ["id"]


class OrderSerializer(CustomModelSerializer):
    """
    订单-序列化器
    """
    order_detail = OrderDetailSerializer(many=True)

    class Meta:
        model = OrderModel
        fields = "__all__"
        read_only_fields = ["id"]


class CreateOrderserializer(CustomModelSerializer):
    """
    创建更新的序列化器
    """
    nums = serializers.IntegerField(required=True, write_only=True)
    cid = serializers.IntegerField(required=True, write_only=True)
    aid = serializers.IntegerField(required=True, write_only=True)
    tatol = serializers.FloatField(required=True, write_only=True)

    class Meta:
        model = OrderModel
        fields = ["nums", "cid", 'aid', 'tatol']
        read_only_fields = ["id"]

    def create(self, validated_data):
        user = self.request.user
        nums = validated_data.get("nums")
        aid = validated_data.get("aid")
        cid = validated_data.get("cid")
        comment = Commodity.objects.filter(id=cid).first()
        address = AddressModel.objects.filter(id=aid).first()
        
        if comment is None:
            raise TypeError("商品不存在")

        if nums <= 0:
            raise TypeError("商品数量不能小于1")
        elif nums > comment.cms_t5:
            raise TypeError("库存不足，请重新下单")

        if address is None:
            raise TypeError("收货地址不存在")

        tatol = nums * comment.cms_t3 * comment.cms_t8

        if tatol <= 0 or tatol != validated_data.get('tatol'):
            raise TypeError("总金额不正确")

        try:
            # 当以下步骤都正确，才会创建数据库数据
            with transaction.atomic():
                order = OrderModel.objects.create(
                    or_Uid=user,
                    or_Aid=address,
                    or_Num=str(int(time.time())) + str(self.request.user.id) + str(random.randrange(10000, 100000)),
                    or_m4=tatol
                )

                if order:
                    OrderDetailModel.objects.create(
                        od_t1=comment,
                        od_t2=order,
                        od_t3=nums,
                        od_t4=comment.cms_t3,
                        od_t5=comment.cms_t8,
                        od_t6=tatol
                    )
                return Response({"code": 200, "msg": "创建成功"})
        except  Exception as e:

            raise TypeError("创建订单失败")


class FilterOrderSet(django_filters.FilterSet):
    """
    订单过滤条件
    """
    startTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='gte')
    endTime = django_filters.DateTimeFilter(field_name="create_datetime", lookup_expr='lte')
    name = django_filters.CharFilter(field_name="or_Uid.name", lookup_expr='icontains')

    class Meta:
        model = OrderModel
        fields = ['startTime', 'endTime', 'name']


class OrderViewSets(CustomModelViewSet):
    """
    单个订单接口
    """
    permission_classes = [IsAuthenticated]
    queryset = OrderModel.objects.all()
    serializer_class = OrderSerializer
    create_serializer_class = CreateOrderserializer
    update_serializer_class = CreateOrderserializer
    filterset_class = FilterOrderSet
