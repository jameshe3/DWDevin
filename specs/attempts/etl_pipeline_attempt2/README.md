# ETL Pipeline Creation Steps

## 1. Workflow Creation
- Create workflow spec with name 'etlDevinTest'
- Create virtual start node
- Create extract node with SQL:
  ```sql
  SELECT employee_id, name, department, salary 
  INTO extracted_employees 
  FROM employees;
  ```
- Create transform node with SQL:
  ```sql
  SELECT 
    employee_id,
    name,
    department,
    salary,
    salary * 12 AS annual_salary,
    salary * 0.05 AS bonus
  INTO transformed_employees
  FROM extracted_employees;
  ```
- Create load node with SQL:
  ```sql
  INSERT INTO loaded_employees
  SELECT 
    employee_id,
    name,
    department,
    salary,
    annual_salary,
    bonus
  FROM transformed_employees;
  ```

## 2. Dependencies
- extract_node depends on start_node
- transform_node depends on extract_node
- load_node depends on transform_node

## 3. Verification Steps
- Verify workflow creation
- Verify node dependencies
- Verify node content

## 4. Deployment Steps
- Create deployment package
- Deploy to production
- Verify deployment status

## 5. Execution Steps
- Create workflow instance
- Start execution
- Monitor status
