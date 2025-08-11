<template>
  <Table ref="tableRef" v-model="searchForm" @search="fetchData">
    <template #form>
      <Input prop="search" v-model="searchForm.search" placeholder="请输入搜索内容" />
      <Picker prop="startTime" v-model="searchForm.startTime" placeholder="开始日期" />
      <Picker prop="endTime" v-model="searchForm.endTime" placeholder="结束日期" />
    </template>

    <template #left-action>
      <el-button type="primary" @click="navAdd">新建海报</el-button>
    </template>

    <template #table>
      <el-table
        v-loading="loading"
        :data="tableData"
        border
        stripe
        height="520"
      >
        <el-table-column  label="海报" width="180">
            <template #default="scope">
              <img style="width: 80px;height: 80px;" v-if="scope.row.imgUrl?.[0]" :src="scope.row.imgUrl?.[0].urlFile+urls" alt="">
              <img style="width: 80px;height: 80px;" v-else src="../../../../assets/images/instance.png" alt="">
            </template>
          </el-table-column>
          <el-table-column prop="brpEx1" label="标题" />
          <el-table-column prop="brpEx4" label="状态" width="150" />
          <el-table-column prop="brpEx8" label="创建时间" width="250" />
          <el-table-column fixed="right" label="操作" width="180">
            <template #default="scope">
              <el-button link type="success" v-if="scope.row.brpEx4=='未上架'" size="small" @click="upSystemPosterlupPoster(scope.row.brpId)">上架</el-button>
              <el-button link type="primary" v-else-if="scope.row.brpEx4=='已上架'" size="small" @click="doSystemPosterldownPoster(scope.row.brpId)">下架</el-button>
              <el-button link type="warning" v-if="scope.row.brpEx4=='未上架'" size="small" @click="handleEdit(scope.row.brpId)">
                  编辑
              </el-button>
              <el-button link type="danger" size="small" @click="removeSystemPosterlDownse(scope.row.brpId)">删除</el-button>
            </template>
          </el-table-column>
      </el-table>
    </template>
  </Table>
</template>

<script setup>
import Table from "@/components/Table";
import {
    SystemPosterlList,
    SystemPosterlupPoster,
    SystemPosterldownPoster,
    SystemPosterlDownse
}from "@/api/card/card"
import { useRouter } from 'vue-router';
import { reactive } from "vue";
import { getToken } from '@/utils/auth'
import { ElMessage, ElMessageBox } from "element-plus";
import { Input, Picker } from "@/components/SearchForm";

const router = useRouter();
const urls = "?token=" + getToken();
const tableRef = ref(null);
const tableData = ref([]);
const loading = ref(false);


const searchForm = reactive({});

const removeSystemPosterlDownse = (id)=>{
  ElMessageBox.confirm("确认删除该海报?", "警告", {
    confirmButtonText: "确认",
    cancelButtonText: "取消",
    type: "warning",
  }).then(async ()=>{
    await SystemPosterlDownse({ brpIds: [id] });
    ElMessage({
      message: '删除成功',
      type: "success",
    });
    fetchData()
  }).catch(err => {
    console.log("取消删除")
  })
}

const upSystemPosterlupPoster = async (brpId) => {
  await SystemPosterlupPoster({ brpId })
  ElMessage({  
    message: '上架成功',
    type: 'success',
  })
  fetchData()
}

const doSystemPosterldownPoster =async(brpId)=>{
  await SystemPosterldownPoster({ brpId })
  ElMessage({  
    message: '下架成功',
    type: 'success',
  })
  fetchData()
}

const fetchData = async()=>{
  loading.value = true;
  
  const { offset: pageNum, pageSize } = tableRef.value.pagination;
  try {
    const { rows, total } = await SystemPosterlList(searchForm, {
      pageNum,
      pageSize
    });
    
    tableRef.value.pagination.total = total;
    tableData.value = rows;
  } finally {
    loading.value = false;
  }
}

const navAdd = () => {
  router.push(`/Marketing`)
}
const handleEdit = (id) => {
  router.push(`/Callingcard/Marketingedit?brpId=${id}`)
}

onMounted(() => {
  fetchData();
});
</script>

<style lang="sass" scoped>

</style>