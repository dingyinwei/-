<script setup>
import { ElDatePicker, ElFormItem } from 'element-plus'

defineOptions({
  inheritAttrs: false
})

const props = defineProps({
  // 表单相关
  label: String,
  prop: String,
  required: Boolean,
  
  // 日期配置
  format: {
    type: String,
    default: 'YYYY-MM-DD'
  },
  valueFormat: {
    type: String,
    default: 'YYYY-MM-DD'
  },
  shortcuts: {
    type: Array,
    default: () => []
  },
  modelValue: [String, Date],
  placeholder: {
    type: String,
    default: '选择日期'
  },
  width: {
    type: String,
    default: '200'
  },
})

const emit = defineEmits(['update:modelValue'])
</script>

<template>
  <el-form-item
    :label="label"
    :prop="prop"
    :required="required"
    :style="{ width: `${props.width}px` }"
  >
    <el-date-picker
      v-bind="$attrs"
      type="date"
      :format="format"
      :value-format="valueFormat"
      :shortcuts="shortcuts"
      :model-value="modelValue"
      @update:model-value="val => emit('update:modelValue', val)"
      :placeholder="placeholder"
      clearable
    />
  </el-form-item>
</template>

<style lang="scss" scoped>
:deep(.el-input) {
  width: 100%;
}
</style>
