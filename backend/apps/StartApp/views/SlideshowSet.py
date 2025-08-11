from rest_framework.permissions import IsAuthenticated

from dvadmin.utils.serializers import CustomModelSerializer
from dvadmin.utils.viewset import CustomModelViewSet
from apps.StartApp.models import Slideshow




class SlideshowSerializer(CustomModelSerializer):
    """
    轮播图-序列化器
    """

    class Meta:
        model = Slideshow
        fields = '__all__'
        read_only_fields = ['id']

class CreateSlideshowSerializer(CustomModelSerializer):
    """
    轮播图-创建、更新序列化器
    """
    class Meta:
        model = Slideshow
        fields = '__all__'
        read_only_fields = ['id']


class SlideshowViewSet(CustomModelViewSet):
    """
    轮播图接口
    """
    permission_classes = [IsAuthenticated]
    queryset = Slideshow.objects.all().order_by('-id')
    serializer_class = SlideshowSerializer
    create_serializer_class = CreateSlideshowSerializer
    update_serializer_class = CreateSlideshowSerializer
    search_fields = ['sds_w1', 'sds_w2']
    filter_fields = ['sds_w1', 'sds_w2']


