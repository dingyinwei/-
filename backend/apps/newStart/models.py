from django.db import models

# Create your models here.
from dvadmin.utils.models import CoreModel, table_prefix


class TestModel(CoreModel):
    """
    测试数据表
    """
    name = models.CharField(max_length=20, verbose_name="名字")
    phone = models.CharField(max_length=20, verbose_name="电话号码")
    avatar = models.CharField(max_length=70, verbose_name="头像")
    age = models.IntegerField(default=0, verbose_name="年龄", blank=True, null=True)
    gender_choices = (
        (0, "未知"),
        (1, "男"),
        (2, "女")
    )
    gender = models.SmallIntegerField(choices=gender_choices, default=0, blank=True, null=True)

    class Meta:
        db_table = table_prefix + "test"
        verbose_name = "测试数据表"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class Departed(CoreModel):
    """
    逝者信息表
    """
    diEx1 = models.CharField(max_length=30, verbose_name='逝者编号', blank=True, null=True)
    diEx2 = models.CharField(max_length=10, verbose_name="逝者姓名")
    diEx3_choices = (
        (0, "男"),
        (1, "女"),
        (2, "未知")
    )
    diEx3 = models.SmallIntegerField(choices=diEx3_choices, default=2, blank=True, null=True, verbose_name="性别")
    diEx4 = models.CharField(max_length=5, verbose_name="是否为党员", blank=True, null=True)
    diEx5 = models.CharField(max_length=10, verbose_name="证件类型", blank=True, null=True)
    diEx6 = models.CharField(max_length=22, verbose_name="证件号码", blank=True, null=True)
    diEx7 = models.SmallIntegerField(verbose_name='年龄', default=0, blank=True, null=True)
    diEx8 = models.CharField(max_length=15, verbose_name="出生日期", blank=True, null=True)
    diEx9 = models.CharField(max_length=10, verbose_name="死亡原因", blank=True, null=True)
    diEx10 = models.CharField(max_length=15, verbose_name="死亡时间", blank=True, null=True)
    diEx11 = models.CharField(max_length=10, verbose_name="死亡地点", blank=True, null=True)
    diEx12 = models.CharField(max_length=10, verbose_name="出具单位", blank=True, null=True)
    diEx13 = models.CharField(max_length=30, verbose_name="逝者籍贯", blank=True, null=True,
                              help_text="身份证上面的地址")
    diEx14 = models.CharField(max_length=10, verbose_name="逝者民族", blank=True, null=True)
    diEx15 = models.CharField(max_length=50, verbose_name="户籍地址", blank=True, null=True,
                              help_text="户籍地址（省、市、区、全地址）")
    diEx16 = models.CharField(max_length=50, verbose_name="生前居住地", blank=True, null=True)
    diEx17 = models.CharField(max_length=20, verbose_name="生前工作单位", blank=True, null=True)
    diEx18 = models.CharField(max_length=5, verbose_name="遗体属性", blank=True, null=True,
                              help_text="有名有主，有名无主，无名无主，三无，其他")
    diEx19 = models.CharField(max_length=10, verbose_name="遗体情况", blank=True, null=True, help_text="正常，非正常")
    diEx20 = models.CharField(max_length=5, verbose_name="领取人", blank=True, null=True)
    diEx21_choices = (
        (0, "否"),
        (1, "是")
    )
    diEx21 = models.SmallIntegerField(choices=diEx21_choices, default=0, blank=True, null=True,
                                      verbose_name="是否有传染病")
    diEx22 = models.CharField(max_length=70, verbose_name="电子档案_死亡证明", blank=True, null=True)
    diEx23 = models.CharField(max_length=70, verbose_name="申请人照片", blank=True, null=True)
    diEx24 = models.CharField(max_length=20, verbose_name="预约火化时间", blank=True, null=True)

    ddmEx16 = models.CharField(max_length=10, verbose_name="遗体处理",help_text="火化、冷藏、运走、拉走、捐献、其他", blank=True, null=True)

    class Meta:
        db_table = table_prefix + "departed"
        verbose_name = "逝者信息表"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class RelationModel(CoreModel):
    """
    家属表
    """
    departed = models.ForeignKey(Departed, on_delete=models.CASCADE, verbose_name="逝者信息", related_name="relation")
    dciEx1 = models.CharField(max_length=10, verbose_name="亲属姓名 ", blank=True, null=True)
    dciEx2_choices = (
        (0, "未知"),
        (1, "男"),
        (2, "女")
    )
    dciEx2 = models.SmallIntegerField(choices=dciEx2_choices, default=0, blank=True, null=True, verbose_name="性别")
    dciEx3_choices = (
        (1, "是"),
        (2, "否")
    )
    dciEx3 = models.SmallIntegerField(choices=dciEx3_choices, default=2, blank=True, null=True,
                                      verbose_name="是否为党员")
    dciEx4 = models.CharField(max_length=18, verbose_name="联系电话", blank=True, null=True)
    dciEx5 = models.CharField(max_length=10, verbose_name="与逝者关系", blank=True, null=True)
    dciEx6 = models.CharField(max_length=10, verbose_name="亲属证件类型", blank=True, null=True)
    dciEx7 = models.CharField(max_length=20, verbose_name="证件号码")
    dciEx8 = models.CharField(max_length=50, verbose_name="户籍地址", blank=True, null=True)
    dciEx9 = models.CharField(max_length=50, verbose_name="现居地", blank=True, null=True)
    dciEx10 = models.TextField(verbose_name="备注", blank=True, null=True)

    class Meta:
        db_table = table_prefix + "relation"
        verbose_name = "亲属表"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class RefrigeratedModel(CoreModel):
    """
    冷藏遗体表
    """
    diEx = models.ForeignKey(Departed, on_delete=models.CASCADE, verbose_name="关联的逝者信息", related_name="refrigerated",blank=True, null=True)
    lcEx1 = models.CharField(max_length=10, verbose_name="柜号", blank=True, null=True)
    lcEx2 = models.CharField(max_length=10, verbose_name="冰柜类型", blank=True, null=True)
    lcEx3 = models.CharField(max_length=10, verbose_name="", blank=True, null=True)
    lcEx4 = models.CharField(max_length=10, verbose_name="", blank=True, null=True)
    lcEx5 = models.CharField(max_length=10, verbose_name="", blank=True, null=True)
    lcEx6 = models.CharField(max_length=10, verbose_name="", blank=True, null=True)
    lcEx7 = models.TextField(verbose_name="备注", blank=True, null=True)
    lcEx8_choices = (
    (1,"需冷藏未上柜"),
    (2,"正在冷藏"),
    (3,"已出柜未火化"),
    )
    lcEx8 = models.SmallIntegerField(choices=lcEx8_choices, default=1, verbose_name="冷藏状态")
    lcEx9 = models.CharField(max_length=10, verbose_name="上柜员工", blank=True, null=True)
    lcEx10 = models.CharField(max_length=10, verbose_name="出柜员工", blank=True, null=True)
    lcEx11 = models.CharField(max_length=10, verbose_name="登记人", blank=True, null=True)
    lcEx12_choices = (
    (0,"否"),
    (1,"是")
    )
    lcEx12 = models.SmallIntegerField(choices=lcEx12_choices, default=0, verbose_name="刑事案件", blank=True, null=True)
    lcEx13_choices = (
        (0, "否"),
        (1, "是")
    )
    lcEx13 = models.SmallIntegerField(choices=lcEx13_choices, default=0, verbose_name="是否已解剖", blank=True, null=True)
    lcEx14 = models.TextField(verbose_name="出柜备注", blank=True, null=True)
    lcDat1 = models.CharField(max_length=20, verbose_name="冷藏开始时间", blank=True, null=True)
    lcDat2 = models.CharField(max_length=20, verbose_name="冷藏结束时间", blank=True, null=True)
    lcDat3 = models.CharField(max_length=20, verbose_name="入柜登记时间", blank=True, null=True)
    lcDat4 = models.CharField(max_length=20, verbose_name="冷藏出柜时间", blank=True, null=True)
    lcDat5 = models.CharField(max_length=20, verbose_name="出柜登记时间", blank=True, null=True)

    class Meta:
        db_table = table_prefix + "refrigerated"
        verbose_name = "遗体冷藏表"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class CremationModel(CoreModel):
    """
    火化表
    """
    diEx = models.ForeignKey(Departed, on_delete=models.CASCADE, verbose_name="关联的逝者信息", related_name="cremation",blank=True, null=True)
    dfiEx1_choices = (
    (1,"平板炉"),
    (2,"捡灰炉"),
    )
    dfiEx1 = models.SmallIntegerField(verbose_name="炉型",choices=dfiEx1_choices,default=1, blank=True, null=True)
    dfiEx2 = models.CharField(max_length=10, verbose_name="炉号", blank=True, null=True)
    dfiEx3_choices = (
    (1,"等待火化"),
    (2,"正在火化"),
    (3,"完成火化")
    )
    dfiEx3 = models.SmallIntegerField(default=1,choices=dfiEx3_choices, verbose_name="火化状态", blank=True, null=True)
    dfiEx4 = models.CharField(max_length=10, verbose_name="操作人", blank=True, null=True)
    dfiEx5 = models.CharField(max_length=10, verbose_name="进油表", blank=True, null=True)
    dfiEx6 = models.CharField(max_length=10, verbose_name="出油表", blank=True, null=True)
    dfiEx7 = models.CharField(max_length=10, verbose_name="耗油量", blank=True, null=True)
    dfiEx8 = models.CharField(max_length=10, verbose_name="登记人", blank=True, null=True)
    dfiEx9 = models.CharField(max_length=10, verbose_name="火化工", blank=True, null=True)
    dfiDate1 = models.CharField(max_length=30, verbose_name="开始火化时间",help_text="年月日时分秒", blank=True, null=True)
    dfiDate2 = models.CharField(max_length=30, verbose_name="结束火化时间",help_text="年月日时分秒", blank=True, null=True)
    dfiDate3 = models.CharField(max_length=30, verbose_name="登记时间",help_text="年月日时分秒", blank=True, null=True)

    class Meta:
        db_table = table_prefix + "cremation"
        verbose_name = "火化记录表"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)


class ReservationModel(CoreModel):
    """
    预约表
    """
    daEx1 = models.CharField(max_length=10, verbose_name="联系人", blank=True, null=True)
    daEx2 = models.CharField(max_length=15, verbose_name="联系电话", blank=True, null=True)
    daEx3 = models.CharField(max_length=7, verbose_name="与逝者关系", blank=True, null=True)
    daEx4 = models.CharField(max_length=7, verbose_name="经办人姓名", blank=True, null=True)
    daEx5 = models.CharField(max_length=7, verbose_name="省份", blank=True, null=True)
    daEx6 = models.CharField(max_length=10, verbose_name="城市", blank=True, null=True)
    daEx7 = models.CharField(max_length=10, verbose_name="县区", blank=True, null=True)
    daEx8 = models.CharField(max_length=7, verbose_name="逝者姓名", blank=True, null=True)
    daEx9_choices = (
    (1,"男"),
    (2,"女"),
    (0,"未知")
    )
    daEx9 = models.SmallIntegerField(choices=daEx9_choices, default=0, verbose_name="逝者性别", blank=True, null=True)
    daEx10 = models.CharField(max_length=20, verbose_name="死亡时间", blank=True, null=True)
    daEx11 = models.CharField(max_length=10, verbose_name="死亡原因", blank=True, null=True)
    daEx12 = models.CharField(max_length=20,verbose_name="预约火化时间", blank=True, null=True)

    class Meta:
        db_table = table_prefix + "reservation"
        verbose_name = "预约表"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)

class BigclassItem(CoreModel):
    """
    父类项目
    """
    sciEx1 = models.CharField(max_length=10, verbose_name="父类项目名字", blank=True, null=True)

    class Meta:
        db_table = table_prefix + "bigclass"
        verbose_name = "父类项目"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)

class ParentsClassModel(CoreModel):
    """
    收费项目：子类项目表
    """
    sfEx = models.ForeignKey(BigclassItem, on_delete=models.CASCADE, verbose_name="父类项目", related_name="children",blank=True, null=True)
    sfEx1 = models.CharField(max_length=20, verbose_name="项目编号", blank=True, null=True)
    sfEx2 = models.CharField(max_length=10,verbose_name="项目名称",blank=True, null=True)
    sfEx3_choices = (
    (1,"是"),
    (2,"否")
    )
    sfEx3 = models.SmallIntegerField(choices=sfEx3_choices,verbose_name="是否进入仓库管理",default=2, blank=True, null=True)
    sfEx4_choices = (
    (1,"公司项目"),
    (2,"馆里项目"),
    (3,"其他")
    )
    sfEx4 = models.SmallIntegerField(choices=sfEx4_choices,verbose_name="项目类型",default=3, blank=True, null=True)
    sfEx5 = models.CharField(max_length=10, verbose_name="是否为特需服务",default="否", blank=True, null=True)
    sfEx6 = models.CharField(max_length=10, verbose_name="拼音码", blank=True, null=True)
    sfEx7 = models.CharField(max_length=10, verbose_name="", blank=True, null=True)
    sfEx8 = models.CharField(max_length=10, verbose_name="单位", blank=True, null=True)
    sfEx9 = models.CharField(max_length=10, verbose_name="单价", blank=True, null=True)
    sfEx10 = models.CharField(max_length=10, verbose_name="父级项目ID", blank=True, null=True)
    sfEx11 = models.CharField(max_length=10, verbose_name="", blank=True, null=True)
    sfEx12 = models.CharField(max_length=10, verbose_name="类别分组", blank=True, null=True)
    sfEx13 = models.CharField(max_length=10, verbose_name="数量", blank=True, null=True)
    sfEx14 = models.CharField(max_length=10, verbose_name="金额", blank=True, null=True)
    sfEx22 = models.CharField(max_length=10, verbose_name="是否为礼厅项目",default="否", blank=True, null=True)
    sfEx35 = models.FloatField(verbose_name="单价减免",default=0, blank=True, null=True)
    sfEx36 = models.CharField(max_length=10, verbose_name="项目分组", blank=True, null=True)
    sfEx38 = models.FloatField(verbose_name="起步价",default=0, blank=True, null=True)
    sfEx42 =  models.FloatField(verbose_name="最大优惠金额",default=0, blank=True, null=True)
    sfEx43 = models.FloatField( verbose_name="最高价", default=0,blank=True, null=True)

    class Meta:
        db_table = table_prefix + "parentsclass"
        verbose_name = "子类项目"
        verbose_name_plural = verbose_name
        ordering = ("-create_datetime",)

