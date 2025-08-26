from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.newStart.models import ParentsClassModel, BigclassItem


class ParentsSerializer(CustomModelSerializer):
    """
    子项目序列化器
    """
    class Meta:
        model = ParentsClassModel
        fields = "__all__"
        read_only_fields = ("id",)


class CreateParentsSerializer(CustomModelSerializer):
    """
    创建/更新 子项目序列化器
    """
    class Meta:
        model = ParentsClassModel
        fields = "__all__"
        read_only_fields = ("id",)


class ParentsView(CustomModelViewSet):
    """
    子项目接口
    """
    permission_classes = [IsAuthenticated]
    queryset = ParentsClassModel.objects.all().order_by("-create_datetime")
    serializer_class = ParentsSerializer
    create_serializer_class = CreateParentsSerializer
    update_serializer_class = ParentsSerializer








