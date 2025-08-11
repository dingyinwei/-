<script setup>
import { getCurrentInstance, ref, watch } from 'vue'

defineOptions({
  inheritAttrs: false
})

const props = defineProps({
  // 支持 Array 或字典键 String
  options: {
    type: [Array, String],
    default: () => []
  },
  labelField: {
    type: String,
    default: 'label'
  },
  valueField: {
    type: String,
    default: 'value'
  },
  width: {
    type: String,
    default: '200'
  },
  label: String,
  prop: String,
  required: Boolean,
  ontology: Boolean
})

const instance = getCurrentInstance()
const proxy = instance.proxy
const internalOptions = ref([])

// 处理 options 的响应式变化
watch(() => props.options, (newVal) => {
  if (typeof newVal === 'string') {
    // 字典请求逻辑
    const { [newVal]: dictData } = proxy.useDict(newVal)
    // 监听字典数据变化
    watch(dictData, (value) => {
      internalOptions.value = value || []
    }, { immediate: true })
  } else {
    // 直接使用数组
    internalOptions.value = newVal
  }
}, { immediate: true })
</script>

<template>
  <el-form-item
    :label="label"
    :prop="prop"
    :required="required"
    :style="{ width: `${props.width}px` }"
  >
    <el-select placeholder="请选择" v-bind="$attrs" clearable>
      <el-option
        v-for="(item, index) in internalOptions"
        :key="index"
        :label="ontology ? item : item[labelField]"
        :value="ontology ? item : item[valueField]"
      />
    </el-select>
  </el-form-item>
</template>

<style lang="scss" scoped>
:deep(.el-select) {
  width: 100%;
}
</style>