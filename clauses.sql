-- 1. Number of employees 
SELECT COUNT(*) AS TOTAL_EMP FROM EMP; -- 2. Employees per department 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT FROM EMP GROUP BY DEPTNO; -- 3. Employees + total salary per department 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT, SUM(SAL) AS TOTAL_SAL  
FROM EMP GROUP BY DEPTNO; -- 4. Employees per department whose names contain 'A' 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT  
FROM EMP WHERE ENAME LIKE '%A%' GROUP BY DEPTNO; -- 5. Max + Min salary per department 
SELECT DEPTNO, MAX(SAL) AS MAX_SAL, MIN(SAL) AS MIN_SAL  
FROM EMP GROUP BY DEPTNO; -- 6. Employees per department hired between 1981–1986 and salary 1000–5000 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT  
FROM EMP  
WHERE HIREDATE BETWEEN '01-JAN-1981' AND '31-DEC-1986'  
AND SAL BETWEEN 1000 AND 5000  
GROUP BY DEPTNO; -- 7. Total salary per job 
SELECT JOB, SUM(SAL) AS TOTAL_SAL FROM EMP GROUP BY JOB; -- 8. Salaries + frequency 
SELECT SAL, COUNT(*) AS SAL_COUNT FROM EMP GROUP BY SAL; -- 9. Departments with at least 4 employees 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT  
FROM EMP GROUP BY DEPTNO HAVING COUNT(*) >= 4; 
�
�
HAVING Clause Queries 
sql -- 1. Departments with at least 2 clerks 
SELECT DEPTNO, COUNT(*) AS CLERK_COUNT  
FROM EMP WHERE JOB = 'CLERK' GROUP BY DEPTNO HAVING COUNT(*) >= 2; -- 2. Departments with at least 4 employees + total salary 
SELECT DEPTNO, SUM(SAL) AS TOTAL_SAL  
FROM EMP GROUP BY DEPTNO HAVING COUNT(*) >= 4; -- 3. Jobs with employees earning >1200 and total salary >3800 
SELECT JOB, COUNT(*) AS EMP_COUNT, SUM(SAL) AS TOTAL_SAL  
FROM EMP WHERE SAL > 1200 GROUP BY JOB HAVING SUM(SAL) > 3800; -- 4. Departments with exactly 2 managers 
SELECT DEPTNO, COUNT(*) AS MGR_COUNT  
FROM EMP WHERE JOB = 'MANAGER' GROUP BY DEPTNO HAVING COUNT(*) = 2; -- 5. Jobs with max salary >2600 
SELECT JOB, MAX(SAL) AS MAX_SAL  
FROM EMP GROUP BY JOB HAVING MAX(SAL) > 2600; -- 6. Salaries repeated 
SELECT SAL FROM EMP GROUP BY SAL HAVING COUNT(*) > 1; -- 7. Hire dates duplicated 
SELECT HIREDATE FROM EMP GROUP BY HIREDATE HAVING COUNT(*) > 1; -- 8. Departments with avg salary <3000 
SELECT DEPTNO, AVG(SAL) AS AVG_SAL  
FROM EMP GROUP BY DEPTNO HAVING AVG(SAL) < 3000; -- 9. Departments with at least 3 employees whose names contain 'A' or 'S' 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT  
FROM EMP WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%'  
GROUP BY DEPTNO HAVING COUNT(*) >= 3; -- 10. Min + Max salary per job with conditions 
SELECT JOB, MIN(SAL) AS MIN_SAL, MAX(SAL) AS MAX_SAL  
FROM EMP GROUP BY JOB HAVING MIN(SAL) > 1000 AND MAX(SAL) < 5000; 
�
�
ORDER BY Queries 
sql -- 1. Employees ordered by salary ascending 
SELECT * FROM EMP ORDER BY SAL ASC; -- 2. Employees ordered by salary descending 
SELECT * FROM EMP ORDER BY SAL DESC; -- 3. Employees per department with names containing 'A' or 'E', ordered by count 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT  
FROM EMP WHERE ENAME LIKE '%A%' OR ENAME LIKE '%E%'  
GROUP BY DEPTNO ORDER BY EMP_COUNT ASC; -- 4. Employees ordered by dept ascending, salary descending 
SELECT * FROM EMP ORDER BY DEPTNO ASC, SAL DESC; 
�
�
GROUP BY AND Queries 
sql -- 1. Employees per department except President 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT  
FROM EMP WHERE JOB <> 'PRESIDENT' GROUP BY DEPTNO; -- 2. Total salary per job 
SELECT JOB, SUM(SAL) AS TOTAL_SAL FROM EMP GROUP BY JOB; -- 3. Managers per department 
SELECT DEPTNO, COUNT(*) AS MGR_COUNT  
FROM EMP WHERE JOB = 'MANAGER' GROUP BY DEPTNO; -- 4. Avg salary per department excluding dept 20 
SELECT DEPTNO, AVG(SAL) AS AVG_SAL  
FROM EMP WHERE DEPTNO <> 20 GROUP BY DEPTNO; -- 5. Employees with 'A' in names per job 
SELECT JOB, COUNT(*) AS EMP_COUNT  
FROM EMP WHERE ENAME LIKE '%A%' GROUP BY JOB; -- 6. Employees + avg salary per dept with salary >2000 
SELECT DEPTNO, COUNT(*) AS EMP_COUNT, AVG(SAL) AS AVG_SAL  
FROM EMP WHERE SAL > 2000 GROUP BY DEPTNO; 
-- 7. Salesmen salary + count per dept 
SELECT DEPTNO, SUM(SAL) AS TOTAL_SAL, COUNT(*) AS SALESMAN_COUNT  
FROM EMP WHERE JOB = 'SALESMAN' GROUP BY DEPTNO; -- 8. Employees + max salary per job 
SELECT JOB, COUNT(*) AS EMP_COUNT, MAX(SAL) AS MAX_SAL  
FROM EMP GROUP BY JOB; -- 9. Max salary per department 
SELECT DEPTNO, MAX(SAL) AS MAX_SAL FROM EMP GROUP BY DEPTNO; -- 10. Salary frequency 
SELECT SAL, COUNT(*) AS SAL_COUNT FROM EMP GROUP BY SAL; 
