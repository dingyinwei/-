<script setup>
/***    逝者信息组件    ***/
import { ref } from 'vue';
import { Input, Select, Picker } from '@/components/SearchForm';

const props = defineProps({
    tableData: Object,
});
console.log(props.tableData);

const formRef = ref(null);

// 省市区数据
const regionOptions = [
    {
        value: 'beijing',
        label: '北京市',
        children: [
            {
                value: 'haidian',
                label: '海淀区',
                children: [
                    { value: 'zhongguancun', label: '中关村' },
                    { value: 'wudaokou', label: '五道口' }
                ]
            },
            {
                value: 'chaoyang',
                label: '朝阳区',
                children: [
                    { value: 'guomao', label: '国贸' },
                    { value: 'wangjing', label: '望京' }
                ]
            }
        ]
    },
    {
        value: 'zhejiang',
        label: '浙江省',
        children: [
            {
                value: 'hangzhou',
                label: '杭州市',
                children: [
                    { value: 'xihu', label: '西湖区' },
                    { value: 'binjiang', label: '滨江区' }
                ]
            }
        ]
    }
];

defineExpose({
    validate: () => {
        return new Promise((resolve) => {
            formRef.value.validate((valid) => {
                resolve(valid);
            });
        });
    }
});
</script>


<template>
    <el-form :model="tableData" ref="formRef" :rules="rules" :inline="true">
        <el-divider content-position="left" class="divider-color1">
            <template #default>
                <span class="divider-color-text1">逝者信息</span>
            </template>
        </el-divider>

        <Input prop="contact" disabled v-model="tableData.contact" label="逝者号码" placeholder="请填写逝者号码" width="250" />
        <Input prop="contact" disabled v-model="tableData.contact" label="逝者号码" placeholder="请填写逝者号码" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="逝者姓名" placeholder="请填写逝者姓名" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="逝者性别" placeholder="请选择性别" options="sys_user_sex"
            width="250" />

        <Select prop="contact" v-model="tableData.contact" label="党员" placeholder="是否为党员" ontology :options="['是', '否']"
            width="250" />

        <Input prop="contact" v-model="tableData.contact" label="年龄" type="number" placeholder="请填写年龄" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="证件类型" placeholder="请选择证件类型" options="cate_type"
            width="250" />

        <Input prop="contact" v-model="tableData.contact" label="证件号码" placeholder="请填写证件号码" width="250" />

        <Picker prop="contact" v-model="tableData.contact" label="出生日期" placeholder="请选择出生日期" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="死亡原因" placeholder="请选择死亡原因" ontology
            :options="['病故', '事故', '车祸', '他杀', '自杀', '其他']" width="250" />

        <Picker prop="contact" v-model="tableData.contact" label="死亡时间" placeholder="请选择死亡时间" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="死亡地点" placeholder="请选择死亡地点" ontology
            :options="['生前居住地', '医院', '其他']" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="出具单位" placeholder="请填写出具单位" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="逝者籍贯" placeholder="请填写逝者籍贯" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="逝者民族" placeholder="请选择逝者民族" options="nationality_type"
            width="250" />
        <!-- 添加省市区联动组件 -->
        <el-form-item label="籍贯(省市区)" prop="nativePlace">
            <el-cascader v-model="tableData.nativePlace" :options="regionOptions" :props="{ expandTrigger: 'hover' }"
                placeholder="请选择省市区" clearable style="width: 250px" />
        </el-form-item>

        <Input prop="contact" v-model="tableData.contact" label="户籍详细地址" placeholder="请填写户籍详细地址" width="300" />

        <Input prop="contact" v-model="tableData.contact" label="生前居住地" placeholder="请填写生前居住地" width="300" />

        <Input prop="contact" v-model="tableData.contact" label="生前工作单位" placeholder="请填写生前工作单位" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="接收方式" placeholder="请选择接收方式" ontology
            :options="['馆内出车', '自运方', '120', '私家车', '其他']" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="接运单位" placeholder="请选择接运单位" ontology
            :options="['殡仪馆', '各自运单位', '其他']" width="250" />
        <Input prop="contact" v-model="tableData.contact" label="接运公司" placeholder="请填写接运公司" width="250" />

        <Picker prop="contact" v-model="tableData.contact" label="接收日期" placeholder="请选择接收日期" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="车牌号" placeholder="请填写车牌号" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="接运里程/km" type="number" placeholder="请填写接运里程"
            width="250" />

        <Input prop="contact" v-model="tableData.contact" label="驾驶员" placeholder="请填写驾驶员" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="存放地点" placeholder="请选择接运单位" ontology
            :options="['太平间', '各礼厅', '司法鉴定中心']" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="非火化遗体跟踪地点" placeholder="请填写非火化遗体跟踪地点" width="340" />

        <Select prop="contact" v-model="tableData.contact" label="遗体属性" placeholder="请选择遗体属性" ontology
            :options="['有名有主', '有名无主', '无名无主', '三无', '其他']" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="遗体情况" placeholder="请选择遗体情况" ontology
            :options="['正常', '非正常']" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="领取人" placeholder="请填写领取人" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="传染病" placeholder="是否有传染病" ontology
            :options="['是', '否']" width="250" />

        <el-divider content-position="left" class="divider-color1">
            <template #default>
                <span class="divider-color-text1">减免信息</span>
            </template>
        </el-divider>

        <Select prop="contact" v-model="tableData.contact" label="免费对象类型" placeholder="请选择免费对象类型" ontology
            :options="['惠民减免', '无']" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="优惠类别" placeholder="请选择优惠类别" ontology
            :options="['惠民', '减免', '捐献', '无', '其他']" width="250" />

        <el-divider content-position="left" class="divider-color1">
            <template #default>
                <span class="divider-color-text1">联系人信息</span>
            </template>
        </el-divider>

        <Input prop="contact" v-model="tableData.contact" label="逝者姓名" placeholder="请填写逝者姓名" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="逝者性别" placeholder="请选择性别" options="sys_user_sex"
            width="250" />

        <Select prop="contact" v-model="tableData.contact" label="亲属党员" placeholder="亲属是否是党员" ontology
            :options="['是', '否']" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="联系电话" placeholder="请填写联系电话" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="与逝者关系" placeholder="请选择关系"
            options="relationship_deceased" width="250" />

        <Select prop="contact" v-model="tableData.contact" label="亲属证件类型" placeholder="请选择证件类型" ontology
            :options="['内地居民身份证', '军官证', '警官证', '其他证件']" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="证件号码" placeholder="请填写证件号码" width="250" />

        <Input prop="contact" v-model="tableData.contact" label="户籍地址" placeholder="请填写户籍地址" width="300" />

        <Input prop="contact" v-model="tableData.contact" label="现居住地" placeholder="请填写现居住地" width="300" />

        <Input prop="contact" v-model="tableData.contact" label="备注" placeholder="请填写备注" width="300" type="textarea" />
    </el-form>
</template>
