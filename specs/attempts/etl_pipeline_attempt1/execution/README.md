# Workflow Instance Creation and Execution

## 1. Create Workflow Instances
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

## 3. Start Workflow Instances
```json
{
	"RequestId": "4CDC4DF2-3374-54EE-AF64-233C7B1E796C",
	"SuccessInfo": {
		"1000341555642": {
			"Success": true
		},
		"1000341555646": {
			"Message": "Because of parallelism config, wait for parent workflowInstance[1000341555642] to finish",
			"Success": false
		}
	}
}
```

## 4. Monitor Execution Status
### Initial Status
#### Instance 1 (1000341555642)
```json
{
	"RequestId": "94A0E999-6CB3-5B4C-9379-37C896C7BE8D",
	"WorkflowInstance": {
		"BizDate": 1738684800000,
		"CreateTime": 1739027605000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"Id": 1000341555642,
		"ModifyTime": 1739027642000,
		"ModifyUser": "200527038829996354",
		"Name": "etl_pipeline_run1",
		"ProjectId": 257880,
		"StartedTime": 1739027642000,
		"Status": "Running",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
```

#### Instance 2 (1000341555646)
```json
{
	"RequestId": "0F971082-FFD9-53EF-8103-84BF42DAC4D1",
	"WorkflowInstance": {
		"BizDate": 1738771200000,
		"CreateTime": 1739027606000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"Id": 1000341555646,
		"ModifyTime": 1739027606000,
		"ModifyUser": "200527038829996354",
		"Name": "etl_pipeline_run1",
		"ProjectId": 257880,
		"Status": "NotRun",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
```

### Final Status
#### Instance 1 (1000341555642)
```json
{
	"RequestId": "1DA188FC-534D-5F85-9699-DF4F3F0A980F",
	"WorkflowInstance": {
		"BizDate": 1738684800000,
		"CreateTime": 1739027605000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"FinishedTime": 1739027731000,
		"Id": 1000341555642,
		"ModifyTime": 1739027731000,
		"ModifyUser": "200527038829996354",
		"Name": "etl_pipeline_run1",
		"ProjectId": 257880,
		"StartedTime": 1739027642000,
		"Status": "Success",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
```

#### Instance 2 (1000341555646)
```json
{
	"RequestId": "57BAB804-323A-56B8-B5F4-CDA7C25D89E5",
	"WorkflowInstance": {
		"BizDate": 1738771200000,
		"CreateTime": 1739027606000,
		"CreateUser": "200527038829996354",
		"EnvType": "Prod",
		"Id": 1000341555646,
		"ModifyTime": 1739027731000,
		"ModifyUser": "200527038829996354",
		"Name": "etl_pipeline_run1",
		"ProjectId": 257880,
		"StartedTime": 1739027731000,
		"Status": "Running",
		"Type": "SupplementData",
		"WorkflowId": 1
	}
}
```

## Verification Results
✓ First instance completed successfully
✓ Second instance waiting due to parallelism=1 configuration
✓ Format matches example workflow execution
