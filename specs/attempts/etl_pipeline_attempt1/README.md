# ETL Pipeline Documentation

## Directory Structure
- workflow/ - Workflow specifications and creation responses
- nodes/ - Node specifications and creation responses for each ETL step
- deployment/ - Deployment specifications and responses
- execution/ - Workflow instance creation and execution monitoring

## ETL Pipeline Steps
1. Extract: SELECT INTO extracted_employees
2. Transform: Calculate annual salary and bonus
3. Load: INSERT INTO loaded_employees

## Node Dependencies
startnode -> extract_node -> transform_node -> load_node

## Resource Configuration
- EMR datasource: w_f8e861d482983d5f
- Resource group: Serverless_res_group_528666525984994_706350919895266
