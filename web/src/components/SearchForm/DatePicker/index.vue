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
    default: 'YYYY-MM-DD HH:mm'
  },
  valueFormat: {
    type: String,
    default: 'YYYY-MM-DD HH:mm'
  },
  rangeSeparator: {
    type: String,
    default: '至'
  },
  shortcuts: {
    type: Array,
    default: () => []
  },
  modelValue: Array,
  startPlaceholder: {
    type: String,
    default: '开始日期时间'
  },
  endPlaceholder: {
    type: String,
    default: '结束日期时间'
  },
  width: {
    type: String,
    default: '400'
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
      type="datetimerange"
      :format="format"
      :value-format="valueFormat"
      :range-separator="rangeSeparator"
      :shortcuts="shortcuts"
      :model-value="modelValue"
      @update:model-value="val => emit('update:modelValue', val)"
      :start-placeholder="startPlaceholder"
      :end-placeholder="endPlaceholder"
    />
  </el-form-item>
</template>