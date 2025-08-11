<script setup>
import { ref } from "vue"
import Table from "@/components/Table";
import { Input, Picker } from "@/components/SearchForm";
import { ElMessageBox, ElMessage } from "element-plus";


const tableRef = ref(null) //分页
const searchForm = reactive({}); // 查询相关
const loading = ref(false)// 加载


//获取表格数据
const fetchData = async () => {
    loading.value = true;
    const { offset: pageNum, pageSize } = tableRef.value.pagination;

    try {

    } finally {
        loading.value = false
    }

}

</script>

<template>
    <div>
        <Table ref="tableRef" v-model="searchForm" @search="fetchData">
            <template #form>
                <Input prop="search" v-model="searchForm.search" placeholder="请输入搜索内容" />
                <Picker prop="startTime" v-model="searchForm.startTime" placeholder="开始日期" />
                <Picker prop="endTime" v-model="searchForm.endTime" placeholder="结束日期" />
            </template>

             <template #left-action>
                <el-button type="primary" @click="handleAdd()">新增预约</el-button>
            </template>

            <template #table>
                <el-table v-loading="loading" :data="tableData" border stripe height="520">
                    <el-table-column type="index" width="50" />
                </el-table>
            </template>

        </Table>
    </div>
</template>


<style lang="scss" scoped></style>

