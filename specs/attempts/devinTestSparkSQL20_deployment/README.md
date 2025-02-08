# DataWorks Workflow Deployment Documentation

## Directory Structure
- sql_update/ - SQL node update specifications and logs
- deployment/ - Deployment configuration and logs
- production/ - Production environment push logs

## Steps Overview
1. Update SQL node with different row
2. Create deployment using CreateDeployment API
3. Push to production using ExecDeploymentStage API

## Resource Group Configuration
```json
{
    "resourceGroup": "Serverless_res_group_528666525984994_706350919895266",
    "id": "6592584198113306515",
    "resourceGroupId": "1000014900077"
}
```

## API References
- CreateDeployment API: https://help.aliyun.com/zh/dataworks/developer-reference/api-dataworks-public-2024-05-18-createdeployment
- ExecDeploymentStage API: https://help.aliyun.com/zh/dataworks/developer-reference/api-dataworks-public-2024-05-18-execdeploymentstage
