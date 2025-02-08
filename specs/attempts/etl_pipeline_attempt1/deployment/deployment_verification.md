# Deployment Status Verification

## Steps
1. Created deployment with:
   - ProjectId: 257880
   - Type: Online
   - ObjectIds: [5188541262300189362]
   - Description: Deploy ETL Pipeline with Extract, Transform, Load nodes
   - Deployment ID: 923b8ee0-d52d-4013-9d22-b60e5e063443

2. Deployment Response:
```json
{
	"Id": "923b8ee0-d52d-4013-9d22-b60e5e063443",
	"RequestId": "E0E57CC1-7DEC-52D4-82CE-7E00A5CDC86C"
}
```

3. Deployment Status:
```json
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
	"RequestId": "8121AD54-2B10-51D2-B972-2C1A94524007"
}
```

## Verification
- Status should be 'Success'
- All stages should complete successfully
- No error messages in response
- Format matches example deployment status
