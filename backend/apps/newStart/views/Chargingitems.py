from rest_framework import viewsets

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import *

import datetime
import json
import random


class ParentsClassModelSerializers(CustomModelSerializer):
    """
    子项目序列化器
    """
    class Meta:
        model = ParentsClassModel
        fields = "__all__"
        read_only_fields = ("id",)

class ChargingItemSerializers(CustomModelSerializer):
    """
    收费项目序列化器
    """
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


class ChargingItemViewSet(viewsets.ModelViewSet):
    """
    收费项目接口
    """








