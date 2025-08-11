<template>
    <el-form :model="formData" ref="formRef" :rules="rules" :inline="true">
        <el-divider content-position="left" class="divider-color1">
            <template #default>
                <span class="divider-color-text1">死亡证明</span>
            </template>
        </el-divider>
        <DepositUpload v-model="formData.contact" />
        <el-divider content-position="left" class="divider-color1">
            <template #default>
                <span class="divider-color-text1">申请人照片</span>
            </template>
        </el-divider>
        <DepositUpload v-model="formData.contact" />


    </el-form>
</template>

<script setup>
/***    电子档案组件    ***/
import { ref } from 'vue';
import { Input, Select, Picker } from '@/components/SearchForm';
import DepositUpload from "@/components/depositUpload"; //图片上传组件

const props = defineProps({
    formData: Object,
});

const formRef = ref(null);


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

<style lang="less" scoped></style>
