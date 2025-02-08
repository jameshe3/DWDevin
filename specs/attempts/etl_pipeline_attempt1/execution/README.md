# Workflow Instance Creation and Execution

## 1. Create Workflow Instances
```bash
# Command used:
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
CreateWorkflowInstances \
--region cn-hangzhou \
--DefaultRunProperties '{
  "Analysis": {
    "Enabled": false,
    "Blocked": false
  },
  "Parallelism": 1,
  "Mode": "AllDownstream"
}' \
--EnvType Prod \
--ProjectId 257880 \
--WorkflowId 1023697425 \
--Name etl_pipeline_run1 \
--Periods '{
  "BizDates": [{
    "StartBizDate": "2025-02-05",
    "EndBizDate": "2025-02-06"
  }]
}' \
--Type SupplementData

# Response:
```json

```
