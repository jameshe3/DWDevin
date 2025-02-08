# DataWorks Workflow Specifications

## Workflow Dependencies Structure
To create a workflow with proper node dependencies:

1. Create workflow first
2. Create virtual start node with container reference:
```json
{
    "metadata": {
        "container": {
            "type": "Flow",
            "uuid": "{workflow_id}"
        }
    }
}
```

3. Create Spark SQL node with container reference and dependencies:
```json
{
    "metadata": {
        "container": {
            "type": "Flow",
            "uuid": "{workflow_id}"
        }
    },
    "dependencies": [
        {
            "type": "Normal",
            "output": "{start_node_id}",
            "refTableName": "startnode"
        }
    ]
}
```

4. Dependencies will be visible in DataWorks console when:
   - Both nodes have proper container references
   - Dependencies are included during node creation
   - Workflow-level dependencies array matches the structure

## Example
See `devinTestSparkSQL5_workflow.json` for a working example with proper dependencies structure.

## Important Notes
1. Dependencies must be defined at workflow level with proper nodeId and depends array
2. Nodes must have proper container references in metadata
3. Dependencies must be included during node creation
4. The workflow-level dependencies array must match workflow1's format exactly

## API Limitations
- "该接口不支持批量操作，若 FlowSpec 中定义了不止一个工作流，则除第一个以外的后续工作流均会被忽略" (The interface does not support batch operations. If FlowSpec defines more than one workflow, subsequent workflows after the first one will be ignored)
- "工作流内部定义的节点也会被直接忽略，请调用 CreateNode 接口依次创建内部节点" (Node definitions within the workflow will be ignored directly, please use the CreateNode interface to create internal nodes one by one)
