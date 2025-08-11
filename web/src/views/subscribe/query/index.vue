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
                    <el-table-column prop="var1" label="逝者姓名" width="120" />
                    <el-table-column prop="var1" label="性别" width="100" />
                    <el-table-column prop="var1" label="死亡原因" />
                    <el-table-column prop="var1" label="死亡时间" width="200" />
                    <el-table-column prop="var1" label="火化时间" width="200" />
                    <el-table-column prop="var1" label="申请人" width="120" />
                    <el-table-column prop="var1" label="关系" width="120" />
                    <el-table-column prop="brpEx4" label="联系电话" width="180" />
                    <el-table-column prop="brpEx4" label="经办人" width="120" />
                    <el-table-column fixed="right" label="操作" width="180">
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
        <AddInput ref="GoodDialogRef" @refresh="fetchData"></AddInput>
        <EditInput ref="EditDialogRef" @refresh="fetchData"></EditInput>

    </div>
</template>

<script setup>
import { ref, reactive } from "vue"
import Table from "@/components/Table";
import { Input, Picker } from "@/components/SearchForm";
import { ElMessageBox, ElMessage } from "element-plus";
import AddInput from "./modules/addInput.vue"
import EditInput from "./modules/editInput.vue"


const tableRef = ref(null) //
const loading = ref(false); // 加载
const searchForm = reactive({}); // 查询相关
const tableData = ref([{
    var1: "15000000000"
}]);

//获取表格数据
const fetchData = async () => {
    loading.value = true;
    const { offset: pageNum, pageSize } = tableRef.value.pagination;
    try {

    } finally {
        loading.value = false
    }
}

/**
 * 新增弹窗相关
*/
const GoodDialogRef = ref(null);
const handleAdd = ()=>{
    console.log("点击了")
    GoodDialogRef.value.open()
}

/**
 * 修改弹窗相关
*/
const EditDialogRef = ref(null);
const handleEdit = (val)=>{
    // console.log(val)
    EditDialogRef.value.open()
}

/**
 * 删除相关
*/

const deleteData = async (val) => {
    //删除数据并重新渲染
    await ElMessageBox.confirm("确定删除吗", "请选择", {
      confirmButtonText: "确定",
      cancelButtonText: "取消",
      type: "warning",
      autofocus: false,
    });
    // await DeleteData({ Id:val.id});
    fetchData();
    ElMessage.success("删除成功");
  }
</script>

<style lang="scss" scoped></style>