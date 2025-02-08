# DataWorks Workflow Creation Guide (Updated Resource Group)

## Overview
This document provides step-by-step instructions for creating a DataWorks workflow with proper node dependencies and updated resource group configuration.

## Workflow Information
- Name: devinTestSparkSQL20
- ID: 5188541262300189362
- Project: 257880

## Step 1: Create Workflow
### Specification
```json
{
    "version": "1.1.0",
    "kind": "CycleWorkflow",
    "spec": {
        "name": "devinTestSparkSQL20",
        "type": "CycleWorkflow",
        "owner": "200527038829996354",
        "workflows": [
            {
                "script": {
                    "path": "devinTestSparkSQL20",
                    "runtime": {
                        "command": "WORKFLOW"
                    }
                },
                "trigger": {
                    "type": "Scheduler",
                    "cron": "00 00 00 * * ?",
                    "startTime": "1970-01-01 00:00:00",
                    "endTime": "9999-01-01 00:00:00",
                    "timezone": "Asia/Shanghai",
                    "delaySeconds": 0
                },
                "strategy": {
                    "timeout": 0,
                    "instanceMode": "T+1",
                    "rerunMode": "Allowed",
                    "rerunTimes": 3,
                    "rerunInterval": 180000,
                    "failureStrategy": "Break",
                    "recurrenceType": "Normal"
                },
                "name": "devinTestSparkSQL20",
                "owner": "200527038829996354"
            }
        ]
    },
    "metadata": {
        "tenantId": "528666525984994",
        "projectId": "257880"
    }
}
```

### Command
```bash
aliyun dataworks-public ImportWorkflowDefinition \
--ProjectId 257880 \
--Spec "$(cat workflow_spec.json)"
```

## Step 2: Create Virtual Start Node
### Specification
```json
{
    "version": "1.1.0",
    "kind": "Node",
    "spec": {
        "nodes": [
            {
                "recurrence": "Normal",
                "timeout": 0,
                "instanceMode": "T+1",
                "rerunMode": "Allowed",
                "rerunTimes": 3,
                "rerunInterval": 180000,
                "script": {
                    "path": "devinTestSparkSQL20/startnode",
                    "runtime": {
                        "command": "VIRTUAL",
                        "commandTypeId": 99,
                        "cu": "0"
                    }
                },
                "name": "startnode",
                "owner": "200527038829996354",
                "metadata": {
                    "container": {
                        "type": "Flow",
                        "uuid": "5188541262300189362"
                    }
                }
            }
        ]
    }
}
```

### Command
```bash
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "5188541262300189362" \
--Spec "$(cat start_node_spec.json)"
```

## Step 3: Create Spark SQL Node with Updated Resource Group
### Specification
```json
{
    "version": "1.1.0",
    "kind": "Node",
    "spec": {
        "nodes": [
            {
                "recurrence": "Normal",
                "timeout": 0,
                "instanceMode": "T+1",
                "rerunMode": "Allowed",
                "rerunTimes": 3,
                "rerunInterval": 180000,
                "datasource": {
                    "name": "w_f8e861d482983d5f",
                    "type": "emr"
                },
                "script": {
                    "language": "spark-sql",
                    "path": "devinTestSparkSQL20/sparksql_insert",
                    "runtime": {
                        "command": "EMR_SPARK_SQL",
                        "commandTypeId": 229,
                        "emrJobConfig": {
                            "priority": "1",
                            "ENABLE_SPARKSQL_JDBC": false,
                            "REUSE_SESSION": false,
                            "FLOW_SKIP_SQL_ANALYZE": false,
                            "queue": "default"
                        },
                        "cu": "0.25"
                    },
                    "content": "INSERT INTO employees VALUES (21, 'David Wilson', 'Sales', 78000.0);"
                },
                "name": "sparksql_insert",
                "owner": "200527038829996354",
                "runtimeResource": {
                    "resourceGroup": "Serverless_res_group_528666525984994_706350919895266",
                    "id": "6592584198113306515",
                    "resourceGroupId": "1000014900077"
                },
                "metadata": {
                    "container": {
                        "type": "Flow",
                        "uuid": "5188541262300189362"
                    }
                },
                "dependencies": [
                    {
                        "type": "Normal",
                        "output": "5641930453604779880",
                        "refTableName": "startnode"
                    }
                ]
            }
        ]
    }
}
```

### Command
```bash
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "5188541262300189362" \
--Spec "$(cat spark_sql_node_spec.json)"
```

## Step 4: Update Workflow with Dependencies
### Specification
```json
{
    "version": "1.1.0",
    "kind": "CycleWorkflow",
    "spec": {
        "name": "devinTestSparkSQL20",
        "id": "5188541262300189362",
        "type": "CycleWorkflow",
        "owner": "200527038829996354",
        "workflows": [
            {
                "script": {
                    "path": "devinTestSparkSQL20",
                    "runtime": {
                        "command": "WORKFLOW"
                    },
                    "id": "7520820576751848697"
                },
                "id": "5188541262300189362",
                "name": "devinTestSparkSQL20",
                "owner": "200527038829996354",
                "dependencies": [
                    {
                        "nodeId": "5830149652015861777",
                        "depends": [
                            {
                                "type": "Normal",
                                "output": "5641930453604779880",
                                "refTableName": "startnode"
                            }
                        ]
                    }
                ]
            }
        ]
    },
    "metadata": {
        "tenantId": "528666525984994",
        "projectId": "257880",
        "uuid": "5188541262300189362"
    }
}
```

### Command
```bash
aliyun dataworks-public ImportWorkflowDefinition \
--ProjectId 257880 \
--Spec "$(cat workflow_update_spec.json)"
```

## Important Notes
1. Each node must have a unique path
2. Container references must be set correctly in node metadata
3. Dependencies must be included during node creation
4. Workflow-level dependencies must match the node dependencies
5. Resource group configuration must be set correctly for Spark SQL node:
```json
"runtimeResource": {
    "resourceGroup": "Serverless_res_group_528666525984994_706350919895266",
    "id": "6592584198113306515",
    "resourceGroupId": "1000014900077"
}
```

## Verification
### Command
```bash
aliyun dataworks-public GetWorkflowDefinition \
--ProjectId 257880 \
--Id 5188541262300189362 | jq '.WorkflowDefinition.Spec | fromjson | .spec.workflows[0]'
```
