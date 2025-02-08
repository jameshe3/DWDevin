# DataWorks Workflow Deployment Documentation

## Overview
This document provides a step-by-step guide for deploying workflow devinTestSparkSQL20 to production.

## Steps Executed

### 1. SQL Node Update
- Updated Spark SQL node (ID: 5830149652015861777) with new row insertion
- SQL Content: `INSERT INTO employees VALUES (22, 'Sarah Johnson', 'Marketing', 82000.0);`
- Resource Group Configuration:
```json
{
    "resourceGroup": "Serverless_res_group_528666525984994_706350919895266",
    "id": "6592584198113306515",
    "resourceGroupId": "1000014900077"
}
```
- Verification: See `sql_update/verification.log`

### 2. Workflow Deployment
- Created deployment using CreateDeployment API
- Deployment ID: bfca81b9-94ff-47a5-987d-7a6d982706c0
- Configuration:
```json
{
    "ProjectId": 257880,
    "Type": "Online",
    "ObjectIds": ["5188541262300189362"],
    "Description": "Deploy workflow devinTestSparkSQL20 with updated SQL node"
}
```
- Response: See `deployment/deployment_response.json`

### 3. Production Push
1. BUILD_PACKAGE Stage
   - Status: Success
   - Details: See `production/deployment_status.json`

2. PROD_CHECK Stage
   - Executed using ExecDeploymentStage API
   - Status: Success
   - Response: See `production/prod_check_response.json`

3. PROD Stage
   - Executed using ExecDeploymentStage API
   - Status: Success
   - Response: See `production/prod_deploy_response.json`

4. Final Status
   - Overall Status: Success
   - All stages completed successfully
   - Details: See `production/final_status.json`

## API References
- CreateDeployment API: https://help.aliyun.com/zh/dataworks/developer-reference/api-dataworks-public-2024-05-18-createdeployment
- ExecDeploymentStage API: https://help.aliyun.com/zh/dataworks/developer-reference/api-dataworks-public-2024-05-18-execdeploymentstage

## Directory Structure
```
devinTestSparkSQL20_deployment/
├── README.md
├── sql_update/
│   ├── current_node_spec.json
│   ├── updated_node_spec.json
│   └── verification.log
├── deployment/
│   ├── deployment_spec.json
│   └── deployment_response.json
└── production/
    ├── deployment_status.json
    ├── prod_check_response.json
    ├── prod_check_status.json
    ├── prod_deploy_response.json
    └── final_status.json
```
