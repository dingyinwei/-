<script setup>
defineOptions({
  inheritAttrs: false
})

const props = defineProps({
  label: String,
  prop: String,
  error: String,
  required: {
    type: Boolean,
    default: false
  },
  labelWidth: [String, Number],
  size: {
    type: String,
    validator: (value) => ['large', 'default', 'small'].includes(value)
  },
  width: {
    type: String,
    default: '200'
  }
})
</script>

<template>
  <el-form-item v-bind="props" :style="{ width: `${props.width}px` }">
    <el-input placeholder="请输入" v-bind="$attrs" clearable>
      <template v-for="(index, slotName) in $slots" #[slotName]>
        <slot :name="slotName" />
      </template>
    </el-input>
  </el-form-item>
</template>