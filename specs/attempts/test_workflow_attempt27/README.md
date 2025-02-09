# Working DataWorks Workflow Specifications

## Overview
This directory contains the working specifications and commands for creating a DataWorks workflow with proper node dependencies.

## Workflow Structure
1. Create workflow first
2. Create virtual start node with empty dependencies array
3. Create Spark SQL node with dependencies to start node
4. Verify workflow structure

## Files
- `workflow_spec.json`: Initial workflow creation spec
- `start_node_spec.json`: Virtual start node spec with empty dependencies array
- `spark_sql_node_spec.json`: Spark SQL node spec with dependencies to start node

## Commands
```bash
# 1. Create workflow
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
CreateWorkflowDefinition \
--ProjectId 257880 \
--Spec "$(cat workflow_spec.json)"

# 2. Create start node with empty dependencies array
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "{workflow_id}" \
--Spec "$(cat start_node_spec.json)"

# 3. Create Spark SQL node with dependencies to start node
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "{workflow_id}" \
--Spec "$(cat spark_sql_node_spec.json)"

# 4. Verify workflow
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
GetWorkflowDefinition \
--ProjectId 257880 \
--Id "{workflow_id}" | jq '.WorkflowDefinition.Spec | fromjson | .spec.workflows[0]'
```

## Important Notes
1. Dependencies must be included during node creation
2. Start node must have empty dependencies array
3. Spark SQL node must include dependencies to start node
4. Nodes must have proper container references in metadata

## API Limitations
- "该接口不支持批量操作，若 FlowSpec 中定义了不止一个工作流，则除第一个以外的后续工作流均会被忽略" (The interface does not support batch operations. If FlowSpec defines more than one workflow, subsequent workflows after the first one will be ignored)
- "工作流内部定义的节点也会被直接忽略，请调用 CreateNode 接口依次创建内部节点" (Node definitions within the workflow will be ignored directly, please use the CreateNode interface to create internal nodes one by one)
