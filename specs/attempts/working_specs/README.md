# DataWorks Workflow Creation Guide

## Overview
This guide provides step-by-step instructions for creating a DataWorks workflow with proper node dependencies and resource group configuration.

## Template Files
1. `workflow_spec.json` - Initial workflow creation
2. `start_node_spec.json` - Virtual start node
3. `spark_sql_node_spec.json` - Spark SQL node with dependencies and resource group
4. `workflow_update_spec.json` - Final workflow update with dependencies

## Variables to Replace
- `{workflow_name}` - Unique workflow name (e.g., devinTestSparkSQL20)
- `{workflow_id}` - ID returned from workflow creation
- `{start_node_id}` - ID returned from start node creation
- `{spark_sql_node_id}` - ID returned from Spark SQL node creation
- `{sql_statement}` - Your SQL insert statement

## Resource Group Configuration
The Spark SQL node must use this resource group configuration:
```json
"runtimeResource": {
    "resourceGroup": "Serverless_res_group_528666525984994_706350919895266",
    "id": "6592584198113306515",
    "resourceGroupId": "1000014900077"
}
```

## Steps
1. Create workflow using `workflow_spec.json`
2. Create virtual start node using `start_node_spec.json`
3. Create Spark SQL node using `spark_sql_node_spec.json`
4. Update workflow with dependencies using `workflow_update_spec.json`

## Commands
```bash
# 1. Create workflow
aliyun dataworks-public ImportWorkflowDefinition \
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
1. Each node must have a unique path
2. Container references must be set correctly in node metadata
3. Dependencies must be included during node creation
4. Workflow-level dependencies must match the node dependencies
5. Resource group configuration must be set correctly for Spark SQL node

## Example Values
From successful workflow devinTestSparkSQL20:
- Workflow ID: 5188541262300189362
- Start Node ID: 5641930453604779880
- Spark SQL Node ID: 5830149652015861777
- SQL: INSERT INTO employees VALUES (21, 'David Wilson', 'Sales', 78000.0);
