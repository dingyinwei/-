from dvadmin.utils.models import CoreModel, table_prefix
from django.db import models
from dvadmin.system.models import Users


# Create your models here.

class Slideshow(CoreModel):
    """
    轮播图
    """
    sds_w1 = models.CharField(max_length=30, verbose_name='轮播图名称')
    sds_w2 = models.CharField(max_length=200, verbose_name='图片路径')

    class Meta:
        db_table = table_prefix + 'slideshow'
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class SortType(CoreModel):
    """
    分类表
    """
    st_e1 = models.CharField(max_length=30, verbose_name='分类名称')

    class Meta:
        db_table = table_prefix + 'sort_type'
        verbose_name = '分类表'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class Commodity(CoreModel):
    """
    商品表
    """
    cms_t1 = models.CharField(max_length=30, verbose_name='商品名称')
    cms_t2 = models.CharField(max_length=200, verbose_name='商品图片')
    cms_t3 = models.FloatField(verbose_name='商品价格', default=0)
    cms_t4 = models.CharField(max_length=200, verbose_name='商品描述', null=True, blank=True)
    cms_t5 = models.PositiveIntegerField(verbose_name='商品库存', default=0)
    cms_t6 = models.PositiveIntegerField(verbose_name='商品浏览量', default=0, null=True, blank=True)
    cms_t7 = models.ForeignKey(SortType, verbose_name='商品分类', on_delete=models.SET_NULL, null=True, blank=True)
    cms_t8 = models.FloatField(verbose_name="折扣", default=1, null=True, blank=True)
    cms_t9_choice = (
        (1, '上架'),
        (2, '下架'),
    )
    cms_t9 = models.SmallIntegerField(choices=cms_t9_choice, verbose_name='商品状态', default=1)

    class Meta:
        db_table = table_prefix + 'commodity'
        verbose_name = '商品表'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class CartModel(CoreModel):
    """
    购物车表
    """
    ca_t1 = models.ForeignKey(Users, verbose_name='用户id', related_name='cart_user', on_delete=models.CASCADE)
    ca_t2 = models.ForeignKey('Commodity', verbose_name='商品id', on_delete=models.CASCADE)
    ca_t3 = models.PositiveIntegerField(verbose_name='商品数量', default=1, null=True, blank=True)

    class Meta:
        db_table = table_prefix + 'cart'
        verbose_name = '购物车表'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class AddressModel(CoreModel):
    """
    收货地址表
    """
    as_t1 = models.ForeignKey(Users,related_name="address_user",on_delete=models.CASCADE,verbose_name="用户id")
    as_t2 = models.CharField(max_length=10,verbose_name="收货人")
    as_t3 = models.CharField(max_length=50,verbose_name="收货地址")
    as_t4 = models.CharField(max_length=20,verbose_name="手机号码")
    as_t5_choice = (
        (1, '默认'),
        (2, '非默认'),
    )
    as_t5 = models.SmallIntegerField(choices=as_t5_choice,verbose_name="是否默认",default=1,null=True,blank=True)

    class Meta:
        db_table = table_prefix+'address1'
        verbose_name = '收货地址表'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class OrderModel(CoreModel):
    """
    订单表c
    """
    or_Uid = models.ForeignKey(Users,related_name="order_user",on_delete=models.CASCADE,verbose_name="用户id")
    or_Aid = models.ForeignKey(AddressModel,related_name="order_address",on_delete=models.CASCADE,verbose_name="地址id")
    or_Num = models.CharField(max_length=30,verbose_name="订单编号")
    or_m3_choice = (
        (1, '待付款'),
        (2, '待发货'),
        (3, '待收货'),
        (4, '已完成'),
        (5, '已取消'),
    )
    or_m3 = models.SmallIntegerField(choices=or_m3_choice,verbose_name="订单状态",default=1,null=True,blank=True)
    or_m4 = models.FloatField(verbose_name="订单金额",default=0)
    #order_detail

    class Meta:
        db_table = table_prefix+'order'
        verbose_name = '订单表'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)

class OrderDetailModel(CoreModel):
    """
    订单详情表
    """
    od_t1 = models.ForeignKey(Commodity,verbose_name="商品id",on_delete=models.CASCADE)
    od_t2 = models.ForeignKey(OrderModel,verbose_name="订单id",on_delete=models.CASCADE,related_name="order_detail")
    od_t3 = models.PositiveIntegerField(verbose_name="商品数量",default=1,null=True,blank=True)
    od_t4 = models.FloatField(verbose_name="商品单价",default=0)
    od_t5 = models.FloatField(verbose_name="折扣",default=1,null=True,blank=True)
    od_t6 = models.FloatField(verbose_name="单个详情总价",default=0)

    class Meta:
        db_table = table_prefix+'order_detail'
        verbose_name = '订单详情表'
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)
