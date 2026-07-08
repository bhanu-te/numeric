
�
Aggregate Functions Queries 
sql -- 1. Minimum salary 
SELECT MIN(SAL) AS MIN_SAL FROM EMP; -- 2. Maximum salary 
SELECT MAX(SAL) AS MAX_SAL FROM EMP; -- 3. Total salary of all employees 
SELECT SUM(SAL) AS TOTAL_SAL FROM EMP; -- 4. Average salary of all employees 
SELECT AVG(SAL) AS AVG_SAL FROM EMP; -- 5. Total number of employees 
SELECT COUNT(*) AS TOTAL_EMP FROM EMP; -- 6. Employees earning salary and commission 
SELECT COUNT(*) AS SAL_COMM_EMP FROM EMP WHERE COMM IS NOT NULL; -- 7. Employees in department 10 
SELECT COUNT(*) AS DEPT10_EMP FROM EMP WHERE DEPTNO = 10; -- 8. Maximum salary in department 30 
SELECT MAX(SAL) AS MAX_SAL_DEPT30 FROM EMP WHERE DEPTNO = 30; -- 9. Distinct jobs 
SELECT COUNT(DISTINCT JOB) AS DISTINCT_JOBS FROM EMP; -- 10. Employees whose name contains 'A' 
SELECT COUNT(*) AS NAME_WITH_A FROM EMP WHERE ENAME LIKE '%A%'; -- 11. Employees whose first character is 'A' 
SELECT COUNT(*) AS NAME_START_A FROM EMP WHERE ENAME LIKE 'A%'; -- 12. Employees having 'A' in names 
SELECT COUNT(*) AS NAME_HAS_A FROM EMP WHERE ENAME LIKE '%A%'; -- 13. Employees having 'Z' in names 
SELECT COUNT(*) AS NAME_HAS_Z FROM EMP WHERE ENAME LIKE '%Z%'; -- 14. Employees having 'S' in names 
SELECT COUNT(*) AS NAME_HAS_S FROM EMP WHERE ENAME LIKE '%S%'; -- 15. Total salary of employees with two consecutive 'L's 
SELECT SUM(SAL) AS SAL_DOUBLE_L FROM EMP WHERE ENAME LIKE '%LL%'; -- 16–21 (repeat of above queries already covered) 
�
�
Complex Aggregate Queries 
sql -- 22. Max, Min salary and count for dept 10 & 30 with conditions 
SELECT MAX(SAL) AS MAX_SAL, MIN(SAL) AS MIN_SAL, COUNT(*) AS EMP_COUNT 
FROM EMP 
WHERE DEPTNO IN (10,30) 
AND (JOB LIKE '%E%' OR JOB LIKE '%A%') 
AND (ENAME LIKE '%A%' OR ENAME LIKE '%O%') 
AND (TO_CHAR(HIREDATE,'YYYY') IN ('1981','1982')) 
AND SAL BETWEEN 1000 AND 9999; -- 23. Employees in dept 30 with conditions 
SELECT COUNT(*) AS EMP_COUNT 
FROM EMP 
WHERE DEPTNO = 30 
AND JOB LIKE '%E%' 
AND TO_CHAR(HIREDATE,'YYYY') = '1981' 
AND SAL BETWEEN 901 AND 2999; -- Total employees designation contains 'C' hired in 1981 
SELECT COUNT(*) AS EMP_C_1981 
FROM EMP 
WHERE JOB LIKE '%C%' AND TO_CHAR(HIREDATE,'YYYY') = '1981'; -- 24. Total salary of employees hired in February 
SELECT SUM(SAL) AS FEB_SAL 
FROM EMP 
WHERE TO_CHAR(HIREDATE,'MON') = 'FEB'; -- 25. Employees designation contains 'C' hired in 1981 
SELECT COUNT(*) AS EMP_C_1981 
FROM EMP 
WHERE JOB LIKE '%C%' AND TO_CHAR(HIREDATE,'YYYY') = '1981'; -- 26. Employees in departments 10,20,30 
SELECT COUNT(*) AS EMP_COUNT FROM EMP WHERE DEPTNO IN (10,20,30); -- 27. Employees count per department 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT FROM EMP GROUP BY DEPTNO; -- 28. Max salary of Analysts 
SELECT MAX(SAL) AS MAX_ANALYST_SAL FROM EMP WHERE JOB = 'ANALYST'; -- 29. Total salary of Clerks in dept 30 
SELECT SUM(SAL) AS CLERK_SAL_DEPT30 FROM EMP WHERE JOB = 'CLERK' AND 
DEPTNO = 30; -- 30. Average salary of Clerks 
SELECT AVG(SAL) AS AVG_CLERK_SAL FROM EMP WHERE JOB = 'CLERK'; -- 31. Minimum salary of Managers or Clerks in dept 10 
SELECT MIN(SAL) AS MIN_SAL FROM EMP WHERE JOB IN ('MANAGER','CLERK') AND 
DEPTNO = 10; 
