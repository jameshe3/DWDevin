# Deployment Stage Execution

## 1. BUILD_PACKAGE Stage
- Status: Success (completed automatically)

## 2. PROD_CHECK Stage
- Command:
```bash
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
ExecDeploymentStage \
--ProjectId=257880 \
--Code="PROD_CHECK" \
--Id="923b8ee0-d52d-4013-9d22-b60e5e063443"
```

- Response:
```json
{
	"RequestId": "86E3A6FA-D92F-5760-A6AC-ED20E44D7C89",
	"Success": true
}
```

## 3. PROD Stage
- Command:
```bash
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
ExecDeploymentStage \
--ProjectId=257880 \
--Code="PROD" \
--Id="923b8ee0-d52d-4013-9d22-b60e5e063443"
```

- Response:
```json
{
	"RequestId": "804EE77D-72ED-5BEC-ACF1-C5EF08E61440",
	"Success": true
}
```

## Status
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
	"RequestId": "2579EBC6-8F88-5E0E-9EC0-40F48548DF7E"
}
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
	"RequestId": "B240BD75-8E84-5C4C-8E69-7DAFDB96EBBA"
}
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
	"RequestId": "59EAEDED-5CD9-59F6-ACC6-F4F5D0A557F4"
}
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
	"RequestId": "554F7822-4C6E-5D69-B02D-1C9201B60121"
}
{
	"Pipeline": {
		"CreateTime": 1739026825000,
		"Creator": "200527038829996354",
		"Id": "923b8ee0-d52d-4013-9d22-b60e5e063443",
		"Message": "",
		"ModifyTime": 1739027476000,
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
	"RequestId": "E19B5699-0082-58B4-86F7-E16A968BF93A"
}
```
