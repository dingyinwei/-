<script setup>
import { ref } from "vue";
import DeceasedInfo from './DeceasedInfo.vue';
import HallInfo from './HallInfo.vue';
import ServiceItems from './ServiceItems.vue';
import ElectronicArchive from './ElectronicArchive.vue';

const activeName = ref('first');
const emit = defineEmits(["refresh"]);
const dialogVisible = ref(false);

// 为每个模块创建独立的数据对象
const deceasedData = ref({
  contact: "",
  nativePlace: []
});

const hallData = ref({
  ceremony: ""
});

const ServiceData = ref({
  ceremony: ""
});

const ElectronicData = ref({
  ceremony: ""
});

// 获取子组件的引用
const deceasedInfoRef = ref(null);
const hallInfoRef = ref(null);
const ServiceItemsRef = ref(null);

// 提交事件 - 现在需要验证所有表单
const handleConfirm = async () => {
  try {
    // 验证逝者信息表单
    const isDeceasedValid = await deceasedInfoRef.value.validate();
    
    // 验证礼厅信息表单
    const isHallValid = await hallInfoRef.value.validate();
    
    // 验证服务项表单
    const isServiceItemsValid = await ServiceItemsRef.value.validate();
    
    if (isDeceasedValid && isHallValid&& isServiceItemsValid) {
      emit('refresh');
      close();
    }
  } catch (error) {
    console.error('表单验证失败:', error);
  }
};



const open = () => {
  dialogVisible.value = true;
};

const close = () => {
  dialogVisible.value = false;
};

defineExpose({
  open,
  close
});
</script>

<template>
  <el-dialog v-model="dialogVisible" title="新增逝者" width="95%" :before-close="close" destroy-on-close>
    <el-tabs v-model="activeName" class="demo-tabs">
      <!-- 逝者信息标签页 -->
      <el-tab-pane label="逝者信息" name="first">
        <DeceasedInfo 
          ref="deceasedInfoRef" 
          :tableData="deceasedData" 
        />
      </el-tab-pane>
      
      <!-- 礼厅办理信息标签页 -->
      <el-tab-pane label="礼厅办理信息" name="second">
        <HallInfo 
          ref="hallInfoRef" 
          :formData="hallData" 
        />
      </el-tab-pane>
      
      <!-- 服务项目标签页 -->
      <el-tab-pane label="服务项目" name="third">
        <ServiceItems 
        ref="ServiceItemsRef" 
        :formData="ServiceData"/>
      </el-tab-pane>
      
      <!-- 电子档案标签页 -->
      <el-tab-pane label="电子档案" name="fourth">
        <ElectronicArchive ref="ElectronicArchiveRef" :formData="ElectronicData" />
      </el-tab-pane>
    </el-tabs>

    <template #footer>
      <el-button @click="close">取消</el-button>
      <el-button type="primary" @click="handleConfirm">确认</el-button>
    </template>
  </el-dialog>
</template>

<style lang="scss" scoped></style>