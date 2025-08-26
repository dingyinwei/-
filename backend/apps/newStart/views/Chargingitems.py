from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from yaml import serialize
from rest_framework import serializers

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import *
from apps.newStart.views.ParentsView import ParentsSerializer

import datetime
import json
import random




class ChargingItemSerializers(CustomModelSerializer):
    """
    收费项目序列化器
    """
    children = ParentsSerializer(read_only=True, many=True)
    class Meta:
        fields = '__all__'
        model = BigclassItem
        read_only_fields = ('id',)



class CreateChargingItemSerializer(CustomModelSerializer):
    """
    创建/更新收费项目序列化器
    """
    class Meta:
        fields = '__all__'
        model = BigclassItem
        read_only_fields = ('id',)






class ChargingItemViewSet(CustomModelViewSet):
    """
    收费项目接口
    """
    permission_classes = [IsAuthenticated]
    queryset = BigclassItem.objects.all().order_by('-id')
    serializer_class = ChargingItemSerializers
    create_serializer_class = CreateChargingItemSerializer
    update_serializer_class = CreateChargingItemSerializer







