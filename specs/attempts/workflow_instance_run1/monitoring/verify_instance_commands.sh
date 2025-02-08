# Commands used to verify workflow instances
# Check status of first instance
aliyun dataworks-public \
--region cn-hangzhou \
GetWorkflowInstance \
--Id=1000341554601

# Check status of second instance
aliyun dataworks-public \
--region cn-hangzhou \
GetWorkflowInstance \
--Id=1000341554605
# Command used to verify workflow instance after 30s
sleep 30 && \
aliyun dataworks-public \
--region cn-hangzhou \
GetWorkflowInstance \
--Id=1000341554601
