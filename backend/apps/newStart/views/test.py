from rest_framework import serializers
from rest_framework.permissions import IsAuthenticated

from apps.newStart.models import TestModel
from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer


class TestSerializer(CustomModelSerializer):
    """
    测试序列化器
    """
    class Meta:
        fields = '__all__'
        model = TestModel

class CreateTestSerializer(CustomModelSerializer):
    """
    创建更新序列化器
    """
    class Meta:
        fields = '__all__'
        model = TestModel
        read_only__fields = ['id']

    def to_internal_value(self, data):
        print("data=>",data)
        arr = 0
        if arr==1:
            print(1111)
        elif arr==2:
            print(2222)
        else:
            print(3333)
        return super().to_internal_value(data)

class TestViewSet(CustomModelViewSet):
    """
    测试接口
    """
    permission_classes = [IsAuthenticated]
    queryset = TestModel.objects.all()
    serializer_class = TestSerializer
    create_serializer_class = CreateTestSerializer
    update_serializer_class = CreateTestSerializer


