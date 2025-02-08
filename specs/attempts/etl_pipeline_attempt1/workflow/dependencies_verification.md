# Node Dependencies Verification

## Workflow Structure
1. Start Node (Virtual)
   - Path: devinTestETLPipeline/startnode
   - No dependencies

2. Extract Node
   - Path: devinTestETLPipeline/extract_node
   - Depends on: startnode
   - SQL: SELECT INTO extracted_employees

3. Transform Node
   - Path: devinTestETLPipeline/transform_node
   - Depends on: extract_node
   - SQL: SELECT INTO transformed_employees with calculations

4. Load Node
   - Path: devinTestETLPipeline/load_node
   - Depends on: transform_node
   - SQL: INSERT INTO loaded_employees

## Verification Results


