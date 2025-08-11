from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.StartApp.models import SortType



class TypeSerializer(CustomModelSerializer):

    class Meta:
        model = SortType
        fields = "__all__"
        read_only_fields = ['id']



class CreateTypeSerializer(CustomModelSerializer):

    class Meta:
        model = SortType
        fields = "__all__"
        read_only_fields = ['id']

    #
    # def to_representation(self, instance):
    #     print("to_representation=>",  instance)
    #     return super().to_representation(instance)
    #
    #
    # def to_internal_value(self, data):
    #     try:
    #         data['id'] = SortType.objects.filter(name=data['st_e1']).first().id
    #         del data['st_e1']
    #         print("data1=>", data)
    #         return super().to_internal_value(data)
    #     except:
    #         print("data2=>", data)
    #         return super().to_internal_value(data)



class TypeViewSet(CustomModelViewSet):
    """
    类型接口
    """
    permission_classes = [IsAuthenticated]
    queryset = SortType.objects.all().order_by("-id")
    serializer_class = TypeSerializer
    create_serializer_class = CreateTypeSerializer
    update_serializer_class = CreateTypeSerializer
    filter_fields = ['st_e1']
    search_fields = ['st_e1']
