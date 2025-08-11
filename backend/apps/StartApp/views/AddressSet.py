from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from dvadmin.utils.viewset import CustomModelViewSet
from dvadmin.utils.serializers import CustomModelSerializer
from apps.StartApp.models import AddressModel


class AddressSerializer(CustomModelSerializer):
    """
    地址序列化器
    """

    class Meta:
        model = AddressModel
        fields = "__all__"
        read_only_fields = ["id"]


class CreateAddressSerializer(CustomModelSerializer):
    """
    创建、更新序列化器
    """

    class Meta:
        model = AddressModel
        fields = "__all__"
        read_only_fields = ["id"]

    def to_internal_value(self, data):
        data['as_t1'] = self.context['request'].user.id
        return super().to_internal_value(data)

    def create(self, validated_data):
        addList = AddressModel.objects.filter(as_t1=self.context['request'].user.id)
        # 创建时把该地址设为默认地址
        for item in addList:
            print("item=>", item.as_t5)
            if item.as_t5 == 1:
                item.as_t5 = 2
                item.save()

        return super().create(validated_data)


class AddressSetView(CustomModelViewSet):
    """
    地址接口
    """
    permission_classes = [IsAuthenticated]
    queryset = AddressModel.objects.all().order_by("-id")
    serializer_class = AddressSerializer
    create_serializer_class = CreateAddressSerializer
    update_serializer_class = CreateAddressSerializer
    search_fields = ['as_t2', 'as_t4']

    @action(methods=['post'], detail=False, url_path='change_to_default')
    def change_to_default(self, request):
        Addlist = AddressModel.objects.filter(as_t1=request.user.id)
        id = request.data.get('id')

        ars = AddressModel.objects.filter(id=id)
        if ars:
            for item in Addlist:
                if item.as_t5 == 1:
                    item.as_t5 = 2
                    item.save()
            AddressModel.objects.filter(id=id).update(as_t5=1)
            return Response({"code": 200, "msg": "操作成功"})

        raise Exception("没有此地址")
