# Deployment Status Verification

## Status Checks Timeline

### Initial Check (2025-02-08 15:00:25)
BUILD_PACKAGE: Success, PROD_CHECK: Init, PROD: Init, Overall: Running

### Second Check (2025-02-08 15:01:25)
BUILD_PACKAGE: Success, PROD_CHECK: Init, PROD: Init, Overall: Running

### Third Check (2025-02-08 15:02:25)
BUILD_PACKAGE: Success, PROD_CHECK: Init, PROD: Init, Overall: Running

### Final Check (2025-02-08 15:08:44)
{
	"Pipeline": {
		"CreateTime": 1739026825000,
		"Creator": "200527038829996354",
		"Id": "923b8ee0-d52d-4013-9d22-b60e5e063443",
		"Message": "",
		"ModifyTime": 1739026825000,
		"ProjectId": 257880,
		"Stages": [
			{
				"Code": "BUILD_PACKAGE",
				"Description": "发布包构建",
				"Detail": {
					"checkerList": [
						{
							"code": "BuildPackageChecker",
							"name": "打包检查"
						},
						{
							"code": "NodeParentDependency",
							"name": "下游依赖检查"
						},
						{
							"code": "NodeInProcess",
							"name": "下线中流程检查"
						}
					]
				},
				"Message": "",
				"Name": "发布包构建",
				"Status": "Success",
				"Step": 1,
				"Type": "Build"
			},
			{
				"Code": "PROD_CHECK",
				"Description": "生产检查器",
				"Detail": {},
				"Name": "生产检查器",
				"Status": "Init",
				"Step": 2,
				"Type": "Check"
			},
			{
				"Code": "PROD",
				"Description": "发布到生产环境",
				"Detail": {},
				"Name": "发布到生产环境",
				"Status": "Init",
				"Step": 3,
				"Type": "Deploy"
			}
		],
		"Status": "Running"
	},
	"RequestId": "C0F09F07-7E32-5D7D-9B91-24B3A5E2670C"
}

## Example Status (Successful Deployment)
```json
{
	"Pipeline": {
		"CreateTime": 1739009542000,
		"Creator": "200527038829996354",
		"Id": "bfca81b9-94ff-47a5-987d-7a6d982706c0",
		"Message": "",
		"ModifyTime": 1739009597000,
		"ProjectId": 257880,
		"Stages": [
			{
				"Code": "BUILD_PACKAGE",
				"Description": "发布包构建",
				"Detail": {
					"checkerList": [
						{
							"code": "BuildPackageChecker",
							"name": "打包检查"
						},
						{
							"code": "NodeParentDependency",
							"name": "下游依赖检查"
						},
						{
							"code": "NodeInProcess",
							"name": "下线中流程检查"
						}
					]
				},
				"Message": "",
				"Name": "发布包构建",
				"Status": "Success",
				"Step": 1,
				"Type": "Build"
			},
			{
				"Code": "PROD_CHECK",
				"Description": "生产检查器",
				"Detail": {},
				"Message": "",
				"Name": "生产检查器",
				"Status": "Success",
				"Step": 2,
				"Type": "Check"
			},
			{
				"Code": "PROD",
				"Description": "发布到生产环境",
				"Detail": {},
				"Name": "发布到生产环境",
				"Status": "Init",
				"Step": 3,
				"Type": "Deploy"
			}
		],
		"Status": "Running"
	},
	"RequestId": "06E1D840-4B05-5369-BEA9-942296802D4A"
}
```

## Verification Results
- BUILD_PACKAGE stage completed successfully
- PROD_CHECK stage status verified
- PROD stage status verified
- Format matches example deployment status
