
�
sql 
INNER JOIN Queries -- 1. Employee + department details for CLERK 
SELECT E.*, D.*  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.JOB = 'CLERK'; -- 2. Employee + department details salary > 1500 
SELECT E.*, D.*  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.SAL > 1500; -- 3. Employee name + location with 'a' 
SELECT E.ENAME, D.LOC  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE D.LOC LIKE '%a%'; -- 4. Employee + department details dept 20 or 30 
SELECT E.*, D.*  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.DEPTNO IN (20,30); -- 5. Employee + department details salary > MARTIN 
SELECT E.*, D.*  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.SAL > (SELECT SAL FROM EMP WHERE ENAME = 'MARTIN'); -- 6. Employee name, salary, deptno, location hired after 31-Dec-1981 in dept 10 or 20 
SELECT E.ENAME, E.SAL, E.DEPTNO, D.LOC  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.HIREDATE > '31-DEC-1981' AND E.DEPTNO IN (10,20); -- 7. Number of employees per location 
SELECT D.LOC, COUNT(*) AS EMP_COUNT  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
GROUP BY D.LOC; -- 8. Dept name + hire date for employees hired after 1983 in ACCOUNTING or RESEARCH 
SELECT D.DNAME, E.HIREDATE  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.HIREDATE > '31-DEC-1983' AND D.DNAME IN ('ACCOUNTING','RESEARCH'); -- 9. Employee name + dept name commission in dept 10 or 30 
SELECT E.ENAME, D.DNAME  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.COMM IS NOT NULL AND E.DEPTNO IN (10,30); -- 10. Dept name + empno for employees 7839, 7902 in New York 
SELECT D.DNAME, E.EMPNO  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.EMPNO IN (7839,7902) AND D.LOC = 'NEW YORK'; 
�
�
CROSS JOIN Queries 
sql -- 1. Employee + department details 
SELECT * FROM EMP CROSS JOIN DEPT; -- 2. Employee name, dept name, location 
SELECT E.ENAME, D.DNAME, D.LOC  
FROM EMP E CROSS JOIN DEPT D; 
-- 3. Employee name + dept name for CLERK 
SELECT E.ENAME, D.DNAME  
FROM EMP E CROSS JOIN DEPT D 
WHERE E.JOB = 'CLERK'; -- 4. Employee name, salary, dept location salary > 1500 
SELECT E.ENAME, E.SAL, D.LOC  
FROM EMP E CROSS JOIN DEPT D 
WHERE E.SAL > 1500; -- 5. Employee name, dept name, hire date hired after 31-Dec-1981 
SELECT E.ENAME, D.DNAME, E.HIREDATE  
FROM EMP E CROSS JOIN DEPT D 
WHERE E.HIREDATE > '31-DEC-1981'; 
�
�
NATURAL JOIN Queries 
sql -- 1. Employee + department details 
SELECT * FROM EMP NATURAL JOIN DEPT; -- 2. Employee name, dept name, location 
SELECT ENAME, DNAME, LOC FROM EMP NATURAL JOIN DEPT; -- 3. Employee name + dept name for CLERK 
SELECT ENAME, DNAME FROM EMP NATURAL JOIN DEPT WHERE JOB = 'CLERK'; -- 4. Employee name, salary, dept location salary > 1500 
SELECT ENAME, SAL, LOC FROM EMP NATURAL JOIN DEPT WHERE SAL > 1500; -- 5. Employee name, dept name, hire date hired after 31-Dec-1981 
SELECT ENAME, DNAME, HIREDATE FROM EMP NATURAL JOIN DEPT WHERE 
HIREDATE > '31-DEC-1981'; 
�
�
Assignment on INNER JOIN 
sql -- 1. Employee name + location 
SELECT E.ENAME, D.LOC FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO; -- 2. Dept name + salary for ACCOUNTING 
SELECT D.DNAME, E.SAL  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE D.DNAME = 'ACCOUNTING'; -- 3. Dept name + annual salary salary > 2340 
SELECT D.DNAME, E.SAL*12 AS ANNUAL_SAL  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.SAL > 2340; -- 4. Employee name + dept name with 'a' in dept name 
SELECT E.ENAME, D.DNAME  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE D.DNAME LIKE '%a%'; -- 5. Employee name + dept name for SALESMAN 
SELECT E.ENAME, D.DNAME  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.JOB = 'SALESMAN'; -- 6. Dept name + job where both start with 'S' 
SELECT D.DNAME, E.JOB  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE D.DNAME LIKE 'S%' AND E.JOB LIKE 'S%'; -- 7. Dept name + manager number reporting to 7839 
SELECT D.DNAME, E.MGR  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.MGR = 7839; -- 8. Dept name + hire date hired after 1983 in ACCOUNTING or RESEARCH 
SELECT D.DNAME, E.HIREDATE  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.HIREDATE > '31-DEC-1983' AND D.DNAME IN ('ACCOUNTING','RESEARCH'); -- 9. Employee name + dept name commission in dept 10 or 30 
SELECT E.ENAME, D.DNAME  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.COMM IS NOT NULL AND E.DEPTNO IN (10,30); -- 10. Dept name + empno for employees 7839, 7902 in New York 
SELECT D.DNAME, E.EMPNO  
FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO 
WHERE E.EMPNO IN (7839,7902) AND D.LOC = 'NEW YORK';
