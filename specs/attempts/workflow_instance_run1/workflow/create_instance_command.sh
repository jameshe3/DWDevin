# Command used to create workflow instance
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
