<script setup>
import { ref } from "vue"
import Table from "@/components/Table";
import { Input, Picker } from "@/components/SearchForm";
import { ElMessageBox, ElMessage } from "element-plus";
import addInput from "./modules/addInput"


const tableRef = ref(null) //分页
const searchForm = reactive({}); // 查询相关
const loading = ref(false)// 加载
const tableData = ref([{
    var1:"数据"
}])

/**
 * @name 获取表格数据
 * */
const fetchData = async () => {
    loading.value = true;
    const { offset: pageNum, pageSize } = tableRef.value.pagination;

    try {

    } finally {
        loading.value = false
    }

}

/**
 * @name 新增
*/
const BusinRef = ref(null)
const handleAdd = ()=>{
    BusinRef.value.open()
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
                <el-button type="primary" @click="handleAdd()" >新增逝者</el-button>
            </template>

            <template #table>
                <el-table v-loading="loading" :data="tableData" border stripe height="520">
                    <el-table-column type="index" label="序号"  fixed="left" width="70" />
                    <el-table-column prop="var1" label="火化时间" width="130" />
                    <el-table-column prop="var1" label="火化编号" width="150" />
                    <el-table-column prop="var1" label="骨灰处理" width="150" />
                    <el-table-column prop="var1" label="逝者姓名" width="120" />
                    <el-table-column prop="var1" label="性别" width="120" />
                    <el-table-column prop="var1" label="年龄" width="80" />
                    <el-table-column prop="var1" label="项目金额" width="110" />
                    <el-table-column prop="var1" label="逝者户籍地址" show-overflow-tooltip width="250" />
                    <el-table-column prop="var1" label="死亡时间" width="130" />
                    <el-table-column prop="var1" label="死亡原因" show-overflow-tooltip width="150" />
                    <el-table-column prop="var1" label="死亡地点" width="150" />
                    <el-table-column prop="var1" label="接尸地点" show-overflow-tooltip width="250" />
                    <el-table-column prop="var1" label="接运单位" width="130" />
                    <el-table-column prop="var1" label="存放地点" show-overflow-tooltip width="150" />
                    <el-table-column prop="var1" label="丧事承办人" width="130" />
                    <el-table-column prop="var1" label="关系" width="100" />
                    <el-table-column prop="var1" label="联系电话" width="150" />
                    <el-table-column prop="var1" label="公司名称" width="170" />
                    <el-table-column fixed="right" label="操作" width="150">
                        <template #default="scope">
                            <el-button link type="warning" size="small" @click="handleEdit(scope.row)">
                                编辑
                            </el-button>
                            <el-button link type="danger" size="small" @click="deleteData(scope.row)">删除</el-button>
                        </template>
                    </el-table-column>
                </el-table>
            </template>
        </Table>
        <addInput ref="BusinRef" />
    </div>
</template>


<style lang="scss" scoped></style>
