# ETL Pipeline Attempt 3

## Overview
This attempt creates an ETL pipeline with three SQL nodes:
1. Extract node: SELECT data into extracted_employees
2. Transform node: Calculate annual salary and bonus into transformed_employees
3. Load node: INSERT data into loaded_employees

## Directory Structure
- workflow/: Contains workflow and node specifications
- deployment/: Contains deployment specifications

## Steps
1. Create workflow using ImportWorkflowDefinition
2. Create virtual start node
3. Create extract, transform, and load nodes
4. Update workflow with dependencies
5. Deploy to production
6. Create and run workflow instance

## Files
- workflow_spec.json: Initial workflow creation spec
- start_node_spec.json: Virtual start node spec
- extract_node_spec.json: Extract node spec
- transform_node_spec.json: Transform node spec
- load_node_spec.json: Load node spec
- workflow_update_spec.json: Final workflow update spec
- deployment_spec.json: Deployment spec
- workflow_instance_spec.json: Instance creation spec
