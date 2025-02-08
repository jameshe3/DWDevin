# Workflow Instance Creation and Execution Documentation

## 1. Create Workflow Instances
```bash
# Command used:
aliyun dataworks-public CreateWorkflowInstances \
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
--WorkflowId 5188541262300189362 \
--Name devinTestSparkSQL20run1 \
--Periods '{
  "BizDates": [{
    "StartBizDate": "2025-02-05",
    "EndBizDate": "2025-02-06"
  }]
}' \
--Type SupplementData

# Response:
{
	"OperationId": "d860bfca-b611-4d7e-a014-2e1ee2ca0999",
	"RequestId": "0B9EB7F6-F1EE-5B52-AC16-11C025F718E7"
}
```

## 2. Verify Creation Result
```bash
# Command used:
aliyun dataworks-public GetCreateWorkflowInstancesResult \
--region cn-hangzhou \
--OperationId="d860bfca-b611-4d7e-a014-2e1ee2ca0999"

# Response:
{
	"RequestId": "832D1D25-2036-59B8-8DD1-48B748FAD6EA",
	"Result": {
		"Status": "Created",
		"WorkflowInstanceIds": [
			1000341554601,
			1000341554605
		]
	}
}
```

## 3. Start Workflow Instances
```bash
# Command used:
aliyun dataworks-public \
--region cn-hangzhou \
StartWorkflowInstances \
--Ids '[1000341554601,1000341554605]'

# Response:
{
	"RequestId": "F8F41ACE-4F70-5431-B9BB-FA2DEA71A444",
	"SuccessInfo": {
		"1000341554601": {
			"Success": true
		},
		"1000341554605": {
			"Message": "Because of parallelism config, wait for parent workflowInstance[1000341554601] to finish",
			"Success": false
		}
	}
}
```

## 4. Monitor Execution Status
```bash
# Commands used:
aliyun dataworks-public \
--region cn-hangzhou \
GetWorkflowInstance \
--Id=1000341554601

aliyun dataworks-public \
--region cn-hangzhou \
GetWorkflowInstance \
--Id=1000341554605

# Initial Status:
{
	"RequestId": "B48DCB8B-E61A-5B9E-BAD2-D477571F698E",
	"WorkflowInstance": {
		"BizDate": 1738684800000,
		"CreateTime": 1739022201000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"Id": 1000341554601,
		"ModifyTime": 1739022265000,
		"ModifyUser": "200527038829996354",
		"Name": "devinTestSparkSQL20run1",
		"ProjectId": 257880,
		"StartedTime": 1739022265000,
		"Status": "Running",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
{
	"RequestId": "6250466C-9824-544A-8323-EF246E52FEBB",
	"WorkflowInstance": {
		"BizDate": 1738684800000,
		"CreateTime": 1739022201000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"FinishedTime": 1739022338000,
		"Id": 1000341554601,
		"ModifyTime": 1739022338000,
		"ModifyUser": "200527038829996354",
		"Name": "devinTestSparkSQL20run1",
		"ProjectId": 257880,
		"StartedTime": 1739022265000,
		"Status": "Success",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
{
	"RequestId": "780F9950-D25F-595D-AD03-BF35D672FE54",
	"WorkflowInstance": {
		"BizDate": 1738771200000,
		"CreateTime": 1739022201000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"Id": 1000341554605,
		"ModifyTime": 1739022201000,
		"ModifyUser": "200527038829996354",
		"Name": "devinTestSparkSQL20run1",
		"ProjectId": 257880,
		"Status": "NotRun",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}

# Final Status (after 30s):
}
{
	"RequestId": "6250466C-9824-544A-8323-EF246E52FEBB",
	"WorkflowInstance": {
		"BizDate": 1738684800000,
		"CreateTime": 1739022201000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"FinishedTime": 1739022338000,
		"Id": 1000341554601,
		"ModifyTime": 1739022338000,
		"ModifyUser": "200527038829996354",
		"Name": "devinTestSparkSQL20run1",
		"ProjectId": 257880,
		"StartedTime": 1739022265000,
		"Status": "Success",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
```

## Summary
1. Successfully created two workflow instances
2. First instance (1000341554601) completed successfully
3. Second instance (1000341554605) waiting due to parallelism=1 configuration

# Additional API Documentation

## ListWorkflowInstances API
```bash
# Command used:
aliyun dataworks-public \
--region cn-hangzhou \
ListWorkflowInstances \
--ProjectId=257880 \
--Name="devinTestSparkSQL20run1"

# Response:

```

## StopWorkflowInstances API
```bash
# Command format (not executed since workflow completed successfully):
aliyun dataworks-public \
--region cn-hangzhou \
StopWorkflowInstances \
--Ids '[instance_id1,instance_id2]'
```

