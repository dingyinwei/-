<template>
  <el-form :model="formData" ref="formRef" :rules="rules" :inline="true">
    <el-divider content-position="left" class="divider-color1">
      <template #default>
        <span class="divider-color-text1">告别厅</span>
      </template>
    </el-divider>
    
    <Select prop="contact" v-model="formData.ceremony" label="告别厅" placeholder="选择告别厅" ontology
      :options="['告别厅1', '告别厅2']" width="190" />

    <DatePicker v-model="formData.startTime" />

    <el-divider content-position="left" class="divider-color1">
      <template #default>
        <span class="divider-color-text1">守灵厅</span>
      </template>
    </el-divider>
    
    <Select prop="contact" v-model="formData.ceremony" label="守灵厅" placeholder="选择守灵厅" ontology
      :options="['守灵厅1', '守灵厅2']" width="190" />

    <DatePicker v-model="formData.startTime" />

    <el-divider content-position="left" class="divider-color1">
      <template #default>
        <span class="divider-color-text1">司法厅</span>
      </template>
    </el-divider>
    
    <Select prop="contact" v-model="formData.ceremony" label="司法厅" placeholder="选择司法厅" ontology
      :options="['司法厅1', '司法厅2']" width="190" />

    <DatePicker v-model="formData.startTime" />

    <el-divider content-position="left" class="divider-color1">
      <template #default>
        <span class="divider-color-text1">冻柜</span>
      </template>
    </el-divider>
    
    <Select prop="contact" v-model="formData.ceremony" label="冻柜" placeholder="选择冻柜" ontology
      :options="['冻柜1', '冻柜2']" width="190" />

    <DatePicker v-model="formData.startTime" />

  </el-form>
</template>

<script setup>
/***    礼厅办理信息组件    ***/ 

import { ref } from 'vue';
import { Input, Select,  DatePicker } from '@/components/SearchForm';

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