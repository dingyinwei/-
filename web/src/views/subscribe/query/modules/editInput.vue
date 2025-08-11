<template>
  <el-dialog v-model="dialogVisible" title="编辑预约" width="1200" :before-close="close" destroy-on-close>
    <el-form :model="tableData" ref="tableRef" :rules="rules" :inline="true">
      <el-divider content-position="left" class="divider-color1">
        <template #default>
          <span class="divider-color-text1">联系人基本信息</span>
        </template>
      </el-divider>
      <Input prop="contact" v-model="tableData.contact" label="联系人" placeholder="请填写联系人" width="300" />
      <Input prop="phone" v-model="tableData.phone" label="联系电话" placeholder="请填写联系电话" width="300" />
      <!-- 可直接填写字典类型 -->
      <Select prop="relationship" v-model="tableData.relationship" label="与逝者关系" placeholder="请选择与逝者关系"
        options="relationship_deceased" width="300" />
      <Input prop="agent" v-model="tableData.agent" label="经办人" placeholder="请填写经办人" width="300" />

      <el-divider content-position="left" class="divider-color1">
        <template #default>
          <span class="divider-color-text1">逝者基本信息</span>
        </template>
      </el-divider>
      <Input prop="deceasedName" v-model="tableData.deceasedName" label="逝者姓名" placeholder="请填写逝者姓名" width="300" />
      <Select prop="gender" v-model="tableData.gender" label="逝者性别" placeholder="请选择逝者性别" options="sys_user_sex"
        width="300" />
      <Picker prop="deathTime" label="死亡时间" v-model="tableData.deathTime" placeholder="请选择死亡时间" width="300" />
      <Input prop="deathReason" label="死亡原因" v-model="tableData.deathReason" placeholder="请填写死亡原因" width="300" />
      <Picker prop="cremationTime" label="预约火化时间" v-model="tableData.cremationTime" placeholder="请选择预约火化时间"
        width="300" />
    </el-form>
    <template #footer>
      <el-button @click="close">取消</el-button>
      <el-button type="primary" @click="handleConfirm">确认</el-button>
    </template>
  </el-dialog>
</template>

<script setup>
import { Input, Select, Picker } from '@/components/SearchForm';


const emit = defineEmits(['refresh'])
const tableData = ref({
  contact: "",      // 联系人
  phone: "",        // 联系电话
  relationship: "", // 与逝者关系
  agent: "",        // 经办人
  deceasedName: "", // 逝者姓名
  gender: "",       // 逝者性别
  deathTime: "",    // 死亡时间
  deathReason: "",  // 死亡原因
  cremationTime: "" // 预约火化时间
})
const dialogVisible = ref(false);
const rules = {
  contact: [{ required: true, message: '请填写联系人', trigger: 'blur' }],
  phone: [{ required: true, message: '请填写联系电话', trigger: 'blur' }],
  relationship: [{ required: true, message: '请选择与逝者关系', trigger: 'change' }],
  agent: [{ required: true, message: '请填写经办人', trigger: 'blur' }],
  deceasedName: [{ required: true, message: '请填写逝者姓名', trigger: 'blur' }],
  gender: [{ required: true, message: '请选择逝者性别', trigger: 'change' }],
  deathTime: [{ required: true, message: '请选择死亡时间', trigger: 'change' }],
  deathReason: [{ required: true, message: '请填写死亡原因', trigger: 'blur' }],
  cremationTime: [{ required: true, message: '请选择预约火化时间', trigger: 'change' }]
}
const open = (id) => {
  if(id){
    //执行获取详情接口
  }
  dialogVisible.value = true;
}
const close = () => {
  tableData.value = {
    contact: "",      // 联系人
    phone: "",        // 联系电话
    relationship: "", // 与逝者关系
    agent: "",        // 经办人
    deceasedName: "", // 逝者姓名
    gender: "",       // 逝者性别
    deathTime: "",    // 死亡时间
    deathReason: "",  // 死亡原因
    cremationTime: "" // 预约火化时间
  }
  dialogVisible.value = false;
}


//提交事件
const tableRef = ref(null)
const handleConfirm = () => {
  tableRef.value.validate((valid) => {
    if (valid) {
      //校验成功后
      emit('refresh')
      close()
    }
  })
}


defineExpose({
  open,
  close
})
</script>

<style lang="scss" scoped></style>