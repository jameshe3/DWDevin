# Working DataWorks Workflow Specifications

This directory contains the working specifications and commands for creating a DataWorks workflow with proper node dependencies.

## Workflow Creation Process

1. Create workflow:
```bash
aliyun dataworks-public ImportWorkflowDefinition \
--ProjectId 257880 \
--Spec "$(cat workflow_spec.json)"
```

2. Create virtual start node:
```bash
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId {workflow_id} \
--Spec "$(cat start_node_spec.json)"
```

3. Create Spark SQL node with dependencies:
```bash
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId {workflow_id} \
--Spec "$(cat spark_sql_node_spec.json)"
```

## Important Notes

1. Container References:
   - Both nodes must have proper container references in metadata
   - Container UUID must match workflow ID
   ```json
   "metadata": {
       "container": {
           "type": "Flow",
           "uuid": "{workflow_id}"
       }
   }
   ```

2. Dependencies Structure:
   - Node-level dependencies in Spark SQL node spec
   ```json
   "dependencies": [
       {
           "type": "Normal",
           "output": "{start_node_id}",
           "refTableName": "startnode"
       }
   ]
   ```
   - Workflow-level dependencies in workflow spec
   ```json
   "dependencies": [
       {
           "nodeId": "{spark_sql_node_id}",
           "depends": [
               {
                   "type": "Normal",
                   "output": "{start_node_id}",
                   "refTableName": "startnode"
               }
           ]
       }
   ]
   ```

3. API Limitations:
   - "该接口不支持批量操作，若 FlowSpec 中定义了不止一个工作流，则除第一个以外的后续工作流均会被忽略"
   - "工作流内部定义的节点也会被直接忽略，请调用 CreateNode 接口依次创建内部节点"
