ql -- 1. Employees in dept_no 10 
SELECT * FROM EMP WHERE DEPTNO = 10; 
-- 2. Employees in dept_no 30 
SELECT * FROM EMP WHERE DEPTNO = 30; 
-- 3. Employees earning salary 3000 
SELECT * FROM EMP WHERE SAL = 3000; 
-- 4. Employees hired after 9 June 1981 
SELECT * FROM EMP WHERE HIREDATE > '09-JUN-1981';
-- 5. Names and salaries of managers 
SELECT ENAME, SAL FROM EMP WHERE JOB = 'MANAGER';
-- 6. Employees earning salary less than 2500 
SELECT * FROM EMP WHERE SAL < 2500; 
-- 7. Names of SALESMAN 
SELECT ENAME FROM EMP WHERE JOB = 'SALESMAN';
-- 8. Employee named MARTIN 
SELECT * FROM EMP WHERE ENAME = 'MARTIN'; 
-- 9. Employees hired after 1981 
SELECT * FROM EMP WHERE HIREDATE > '31-DEC-1981';
-- 10. Employees hired before 1982 
SELECT * FROM EMP WHERE HIREDATE < '01-JAN-1982';
-- 11. Annual salary of SMITH 
SELECT ENAME, SAL*12 AS ANNUAL_SAL FROM EMP WHERE ENAME = 'SMITH';
-- 12. Names of CLERK 
SELECT ENAME FROM EMP WHERE JOB = 'CLERK';
-- 13. Salaries of SALESMAN 
SELECT ENAME, SAL FROM EMP WHERE JOB = 'SALESMAN';
-- 14. Employees earning more than 2000 
SELECT * FROM EMP WHERE SAL > 2000;
-- 15. Employee named JONES 
SELECT * FROM EMP WHERE ENAME = 'JONES'; 
-- 16. Employees hired after 01-JAN-81 
SELECT * FROM EMP WHERE HIREDATE > '01-JAN-1981';
-- 17. Employees with annual salary > 12000 
SELECT ENAME, SAL, SAL*12 AS ANNUAL_SAL  
FROM EMP WHERE SAL*12 > 12000;
-- 18. EMPNO of employees in dept 30 
SELECT EMPNO FROM EMP WHERE DEPTNO = 30; 
-- 19. ENAME and HIREDATE before 1981 
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE < '01-JAN-1981';
-- 20. Employees working as MANAGER 
SELECT * FROM EMP WHERE JOB = 'MANAGER';
-- 21. ENAME and SALARY with commission = 1400 
SELECT ENAME, SAL FROM EMP WHERE COMM = 1400;
-- 22. Employees whose commission > salary 
SELECT * FROM EMP WHERE COMM > SAL;
-- 23. EMPNO hired before 1987 
SELECT EMPNO FROM EMP WHERE HIREDATE < '01-JAN-1987'; 
-- 24. Employees working as ANALYST 
SELECT * FROM EMP WHERE JOB = 'ANALYST';
-- 25. Employees earning more than 2000 per month 
SELECT * FROM EMP WHERE SAL > 2000; 
�
�
ARITHMETIC OPERATORS QUERIES 
sql
-- 1. Employee details with annual salaries 
SELECT ENAME, SAL, SAL*12 AS ANNUAL_SAL FROM EMP; 
2. Name + hike of 700 if annual salary > 25000 
SELECT ENAME, SAL*12 AS ANNUAL_SAL, SAL*12+700 AS HIKE_SAL 
FROM EMP WHERE SAL*12 > 25000; 
-- 3. Employees whose quarterly salary < 7500 
SELECT * FROM EMP WHERE (SAL*3) < 7500;
-- 4. Names + annual salary with monthly bonus 500 
SELECT ENAME, (SAL+500)*12 AS ANNUAL_SAL_BONUS FROM EMP;
-- 5. Employees annual salary after deduction 1000 > 20000 
SELECT * FROM EMP WHERE (SAL*12 - 1000) > 20000;
-- 6. Names + salary after 20% increment 
SELECT ENAME, SAL, SAL*1.2 AS NEW_SAL FROM EMP;
-- 7. Names + annual salary with monthly bonus 500 
SELECT ENAME, (SAL+500)*12 AS ANNUAL_SAL_BONUS FROM EMP; 
-- 8. Employees annual salary after deduction 1000 > 20000 
SELECT * FROM EMP WHERE (SAL*12 - 1000) > 20000;
-- 9. Names + salary after 20% increment 
SELECT ENAME, SAL, SAL*1.2 AS NEW_SAL FROM EMP; 
-- 10. Names + salary after 10% decrement 
SELECT ENAME, SAL, SAL*0.9 AS NEW_SAL FROM EMP; -- 11. Employees annual salary after 15% increment > 40000 
SELECT * FROM EMP WHERE (SAL*12*1.15) > 40000; -- 12. Names + annual, quarterly, half-yearly salary 
SELECT ENAME, SAL*12 AS ANNUAL, SAL*3 AS QUARTERLY, SAL*6 AS HALF_YEARLY 
FROM EMP; -- 13. Employees annual salary between 20000 and 40000 
SELECT * FROM EMP WHERE SAL*12 BETWEEN 20000 AND 40000; -- 14. Names whose salary + 1000 > 3000 
SELECT ENAME, SAL FROM EMP WHERE (SAL+1000) > 3000; 
