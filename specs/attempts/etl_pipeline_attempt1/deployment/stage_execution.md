# Deployment Stage Execution

## 1. BUILD_PACKAGE Stage
- Status: Success (completed automatically)

## 2. PROD_CHECK Stage
- Command:
```bash
aliyun dataworks-public \
--endpoint dataworks.cn-hangzhou.aliyuncs.com \
ExecuteDeploymentStage \
--ProjectId=257880 \
--RegionId=cn-hangzhou \
--DeploymentId="923b8ee0-d52d-4013-9d22-b60e5e063443" \
--StageCode="PROD_CHECK"
```

- Response:
```json

```

## Next Steps
1. Wait for PROD_CHECK to complete
2. Execute PROD stage
3. Verify final deployment status
