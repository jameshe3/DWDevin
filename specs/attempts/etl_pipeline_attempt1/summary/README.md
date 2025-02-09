# ETL Pipeline Implementation Summary

## 1. Created Workflows
```json
{
	"PagingInfo": {
		"PageNumber": 1,
		"PageSize": 10,
		"TotalCount": 4,
		"Workflows": [
			{
				"CreateTime": 1739007791000,
				"CreateUser": "200527038829996354",
				"EnvType": "Prod",
				"Id": 1023697425,
				"ModifyTime": 1739007791000,
				"ModifyUser": "200527038829996354",
				"Name": "devinTestSparkSQL20",
				"Owner": "200527038829996354",
				"ProjectId": 257880,
				"Trigger": {
					"Cron": "00 00 00 * * ?",
					"EndTime": "9999-01-01 00:00:00",
					"Recurrence": "Normal",
					"StartTime": "1970-01-01 00:00:00",
					"Type": "Scheduler"
				}
			},
			{
				"ClientUniqueCode": "6499733942135546679",
				"CreateTime": 1739006987000,
				"CreateUser": "200527038829996354",
				"EnvType": "Prod",
				"Id": 1023697295,
				"ModifyTime": 1739006987000,
				"ModifyUser": "200527038829996354",
				"Name": "devinTestSparkSQL19",
				"Owner": "200527038829996354",
				"ProjectId": 257880,
				"Trigger": {
					"Cron": "00 00 00 * * ?",
					"EndTime": "9999-01-01 00:00:00",
					"Recurrence": "Normal",
					"StartTime": "1970-01-01 00:00:00",
					"Type": "Scheduler"
				}
			},
			{
				"CreateTime": 1739001837000,
				"CreateUser": "200527038829996354",
				"EnvType": "Prod",
				"Id": 1023696351,
				"ModifyTime": 1739001837000,
				"ModifyUser": "200527038829996354",
				"Name": "devinTestSparkSQL5",
				"Owner": "200527038829996354",
				"ProjectId": 257880,
				"Trigger": {
					"Cron": "00 00 00 * * ?",
					"EndTime": "9999-01-01 00:00:00",
					"Recurrence": "Normal",
					"StartTime": "1970-01-01 00:00:00",
					"Type": "Scheduler"
				}
			},
			{
				"CreateTime": 1738976621000,
				"CreateUser": "200527038829996354",
				"EnvType": "Prod",
				"Id": 1023691603,
				"ModifyTime": 1738976621000,
				"ModifyUser": "200527038829996354",
				"Name": "workflow1",
				"Owner": "200527038829996354",
				"ProjectId": 257880,
				"Trigger": {
					"Cron": "00 08 00 * * ?",
					"EndTime": "9999-01-01 00:00:00",
					"Recurrence": "Normal",
					"StartTime": "1970-01-01 00:00:00",
					"Type": "Scheduler"
				}
			}
		]
	},
	"RequestId": "AAE70E52-988D-5E5C-A0A0-8BA6B025577A"
}
```

## 2. Created Deployments
```json
{
	"PagingInfo": {
		"Deployments": [
			{
				"CreateTime": 1739026825000,
				"Creator": "200527038829996354",
				"Id": "923b8ee0-d52d-4013-9d22-b60e5e063443",
				"Message": "",
				"ModifyTime": 1739027509000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1739009542000,
				"Creator": "200527038829996354",
				"Id": "bfca81b9-94ff-47a5-987d-7a6d982706c0",
				"Message": "",
				"ModifyTime": 1739009612000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1739007788000,
				"Creator": "200527038829996354",
				"Id": "dd90c1c1-52de-45a3-99dc-cee0aed1e6ee",
				"Message": "",
				"ModifyTime": 1739007794000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1739007034000,
				"Creator": "200527038829996354",
				"Id": "8a69d3a3-7869-46c4-aa67-fc5be2c6f4f6",
				"Message": "",
				"ModifyTime": 1739007035000,
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
			{
				"CreateTime": 1739006982000,
				"Creator": "200527038829996354",
				"Id": "0a69d991-c64a-43a7-a64c-49f59e8c9891",
				"Message": "",
				"ModifyTime": 1739006990000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1739002694000,
				"Creator": "200527038829996354",
				"Id": "b0260fe3-17dd-45e3-98d0-b24b25cdf6d5",
				"Message": "",
				"ModifyTime": 1739002760000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1739001833000,
				"Creator": "200527038829996354",
				"Id": "3baececb-c2df-4b80-a7c9-a58ea7e2c5ec",
				"Message": "",
				"ModifyTime": 1739001839000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1738998893000,
				"Creator": "200527038829996354",
				"Id": "929087ae-4194-40fd-af59-8161f1cf67d0",
				"Message": "",
				"ModifyTime": 1738998911000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			},
			{
				"CreateTime": 1738977542000,
				"Creator": "200527038829996354",
				"Id": "06e011ff-084d-4f98-aa9a-b02a640ae785",
				"Message": "",
				"ModifyTime": 1738977583000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Running",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Running"
			},
			{
				"CreateTime": 1738976596000,
				"Creator": "200527038829996354",
				"Id": "45b6bcd9-9284-4e6b-bfff-922db0a72011",
				"Message": "",
				"ModifyTime": 1738976624000,
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
						"Message": "",
						"Name": "发布到生产环境",
						"Status": "Success",
						"Step": 3,
						"Type": "Deploy"
					}
				],
				"Status": "Success"
			}
		],
		"PageNumber": "1",
		"PageSize": "10",
		"TotalCount": "0"
	},
	"RequestId": "129626F8-50DF-5908-998B-297B29C861CD"
}
```

## 3. Created Workflow Instances
```json

```
