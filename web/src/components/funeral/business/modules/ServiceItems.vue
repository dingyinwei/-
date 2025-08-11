<template>
    <div>
        <Table>
            <el-divider content-position="left" class="divider-color1">
                <template #default>
                    <span class="divider-color-text1">服务项目</span>
                </template>
            </el-divider>

            <template #left-action>
                <el-button type="primary" @click="handleClickAdd">添加</el-button>
            </template>

            <template #table>
                <el-table v-loading="loading" :data="tableData" border stripe height="520" @row-click="handleRowClick"
                    @row-dblclick="editRow">
                    <el-table-column label="项目名称" width="170">
                        <template #default="{ row, $index }">
                            <div v-if="row.editing">
                                <el-input v-model="row.name" size="small" @blur="saveRow(row, $index)" />
                            </div>
                            <div v-else>{{ row.name }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="起步价" width="120">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-input-number v-model="row.startPrice" :min="0" size="small"
                                    controls-position="right" @blur="saveRow(row)" />
                            </div>
                            <div v-else>{{ row.startPrice }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="最高价" width="120">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-input-number v-model="row.maxPrice" :min="0" size="small" controls-position="right"
                                    @blur="saveRow(row)" />
                            </div>
                            <div v-else>{{ row.maxPrice }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="单价" width="120">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-input-number v-model="row.unitPrice" :min="0" size="small" controls-position="right"
                                    @blur="saveRow(row)" />
                            </div>
                            <div v-else>{{ row.unitPrice }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="数量" width="120">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-input-number v-model="row.quantity" :min="1" size="small" controls-position="right"
                                    @blur="saveRow(row)" />
                            </div>
                            <div v-else>{{ row.quantity }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="应收金额" width="120">
                        <template #default="{ row }">
                            {{ calculateReceivable(row) }}
                        </template>
                    </el-table-column>

                    <el-table-column label="减免金额" width="120">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-input-number v-model="row.discount" :min="0" :max="calculateReceivable(row)"
                                    size="small" controls-position="right" @blur="saveRow(row)" />
                            </div>
                            <div v-else>{{ row.discount }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="优惠金额" width="120">
                        <template #default="{ row }">
                            {{ calculatePreferential(row) }}
                        </template>
                    </el-table-column>

                    <el-table-column label="备注" width="250">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-input v-model="row.remark" size="small" @blur="saveRow(row)" />
                            </div>
                            <div v-else>{{ row.remark }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column label="项目类型" width="120">
                        <template #default="{ row }">
                            <div v-if="row.editing">
                                <el-select v-model="row.type" size="small" @change="saveRow(row)">
                                    <el-option label="基本服务" value="基本服务" />
                                    <el-option label="增值服务" value="增值服务" />
                                    <el-option label="特殊服务" value="特殊服务" />
                                </el-select>
                            </div>
                            <div v-else>{{ row.type }}</div>
                        </template>
                    </el-table-column>

                    <el-table-column fixed="right" label="操作" width="180">
                        <template #default="scope">
                            <el-button link type="danger" size="small" @click.stop="deleteData(scope.row)">
                                删除
                            </el-button>
                        </template>
                    </el-table-column>
                </el-table>
            </template>

        </Table>
        <el-dialog v-model="dialogVisible" title="新增收费项目" width="1200" :before-close="close" destroy-on-close>
            <Table ref="tableRef" v-model="searchForm" @search="fetchData">
                <template #form>
                    <Select prop="contact" v-model="searchForm.search" label="" placeholder="选择收费项目" ontology
                        :options="['基础收费项目', '礼厅收费项目']" width="200" />
                </template>
                <template #table>
                    <el-table v-loading="loading" :data="tableData" height="500">
                        <el-table-column type="index" width="55"></el-table-column>
                        <el-table-column label="项目名称" prop="name"></el-table-column>
                        <el-table-column label="单价" prop="price"></el-table-column>
                        <el-table-column label="单位/尺寸" prop="type"></el-table-column>
                        <el-table-column label="数量" prop="type"></el-table-column>
                        <el-table-column label="金额" prop="type"></el-table-column>
                    </el-table>
                </template>

            </Table>
        </el-dialog>
    </div>
</template>

<script setup>
/***    服务项目组件    ***/

import { ref } from 'vue';
import Table from "@/components/Table";
import { Input, Picker, Select } from "@/components/SearchForm";
import { ElMessageBox,ElMessage } from 'element-plus';

const props = defineProps({
    formData: Object,
});
const formRef = ref(null);
const dialogVisible = ref(false); // 弹窗

const tableRef = ref(null) //
const loading = ref(false); // 加载
const searchForm = reactive({}); // 查询相关
const tableData = ref([
    {
        id: 1,
        name: "遗体接运",
        startPrice: 200,
        maxPrice: 500,
        unitPrice: 300,
        quantity: 1,
        discount: 0,
        type: "基本服务",
        remark: "",
        editing: false // 编辑状态
    },
    {
        id: 2,
        name: "遗体整容",
        startPrice: 300,
        maxPrice: 800,
        unitPrice: 500,
        quantity: 1,
        discount: 0,
        type: "基本服务",
        remark: "",
        editing: false
    }
]);

//添加项目
const handleClickAdd = () => {
    dialogVisible.value = true;
};


// 当前编辑的行ID
const editingRowId = ref(null);

// 编辑行log.
const editRow = (row) => {
    console.log(row)
    // 如果有正在编辑的行，先保存
    if (editingRowId.value !== null) {
        const currentEditingRow = tableData.value.find(r => r.id === editingRowId.value);
        if (currentEditingRow) {
            currentEditingRow.editing = false;
        }
    }

    row.editing = true;
    editingRowId.value = row.id;
};

// 保存行
const saveRow = (row) => {
    row.editing = false;
    editingRowId.value = null;

    // 这里可以添加保存到后端的逻辑
    console.log("保存行数据:", row);
};

// 行点击事件
const handleRowClick = (row) => {
    // 如果点击的是正在编辑的行，不做操作
    if (row.editing) return;

    // 如果有正在编辑的行，保存它
    if (editingRowId.value !== null) {
        saveRow(tableData.value.find(r => r.id === editingRowId.value));
    }
};

// 计算应收金额
const calculateReceivable = (row) => {
    return row.unitPrice * row.quantity;
};

// 计算优惠金额
const calculatePreferential = (row) => {
    // 优惠金额为减免金额的80%
    return row.discount * 0.8;
};



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

defineExpose({
    validate: () => {
        return new Promise((resolve) => {
            formRef.value.validate((valid) => {
                resolve(valid);
            });
        });
    }
});
</script>

<style lang="sass" scoped>

</style>