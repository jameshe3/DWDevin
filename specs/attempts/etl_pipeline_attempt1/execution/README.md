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
  "RootTaskIds": [1023697426],
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
{
	"OperationId": "997ba921-f8a4-4704-85f6-f4a032c8b1c2",
	"RequestId": "22DFE310-8CAD-5BA7-B71A-32B8C4C8B7D7"
}
```

## 2. Verify Creation Result
```json
{
	"RequestId": "B60ED40D-8CBA-5950-86CD-BE3E67A6D469",
	"Result": {
		"Status": "Created",
		"WorkflowInstanceIds": [
			1000341555642,
			1000341555646
		]
	}
}
```
