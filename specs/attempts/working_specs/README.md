# Working DataWorks Workflow Specifications

## Overview
This directory contains the working specifications and commands for creating a DataWorks workflow with proper node dependencies.

## Workflow Structure
1. Create workflow first
2. Create virtual start node
3. Create Spark SQL node with dependencies
4. Update workflow with dependencies

## Files
- `workflow_spec.json`: Initial workflow creation spec
- `start_node_spec.json`: Virtual start node spec
- `spark_sql_node_spec.json`: Spark SQL node spec with dependencies
- `workflow_update_spec.json`: Final workflow update spec with dependencies

## Commands
```bash
# 1. Create workflow
aliyun dataworks-public CreateWorkflowDefinition \
--ProjectId 257880 \
--Spec "$(cat workflow_spec.json)"

# 2. Create start node
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "{workflow_id}" \
--Spec "$(cat start_node_spec.json)"

# 3. Create Spark SQL node
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "{workflow_id}" \
--Spec "$(cat spark_sql_node_spec.json)"

# 4. Update workflow with dependencies
aliyun dataworks-public ImportWorkflowDefinition \
--ProjectId 257880 \
--Spec "$(cat workflow_update_spec.json)"

# 5. Verify workflow
aliyun dataworks-public GetWorkflowDefinition \
--ProjectId 257880 \
--Id "{workflow_id}" | jq '.WorkflowDefinition.Spec | fromjson | .spec.workflows[0]'
```

## Important Notes
1. Dependencies must be defined at workflow level with proper nodeId and depends array
2. Nodes must have proper container references in metadata
3. Dependencies must be included during node creation
4. The workflow-level dependencies array must match workflow1's format exactly

## API Limitations
- "该接口不支持批量操作，若 FlowSpec 中定义了不止一个工作流，则除第一个以外的后续工作流均会被忽略" (The interface does not support batch operations. If FlowSpec defines more than one workflow, subsequent workflows after the first one will be ignored)
- "工作流内部定义的节点也会被直接忽略，请调用 CreateNode 接口依次创建内部节点" (Node definitions within the workflow will be ignored directly, please use the CreateNode interface to create internal nodes one by one)
