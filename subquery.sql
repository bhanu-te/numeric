-- Single‑Row Subqueries

--Salary > BLAKE

sql
SELECT *
FROM emp
WHERE sal > (SELECT sal FROM emp WHERE ename = 'BLAKE');
Salary < CLARK

sql
SELECT *
FROM emp
WHERE sal < (SELECT sal FROM emp WHERE ename = 'CLARK');
Manager = KING

sql
SELECT *
FROM emp
WHERE mgr = (SELECT empno FROM emp WHERE ename = 'KING');
Salary > MIN(sal)

sql
SELECT *
FROM emp
WHERE sal > (SELECT MIN(sal) FROM emp);
Salary < MAX(sal)

sql
SELECT *
FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp);
🔹 Multiple‑Row Subqueries
Return a set of values, used with IN, ANY, ALL.

Dept in NEW YORK, DALLAS, CHICAGO

sql
SELECT *
FROM emp
WHERE deptno IN (SELECT deptno FROM dept WHERE loc IN ('NEW YORK','DALLAS','CHICAGO'));
Deptno exists in DEPT

sql
SELECT *
FROM emp
WHERE deptno IN (SELECT deptno FROM dept);
Salary matches any in dept 20

sql
SELECT *
FROM emp
WHERE sal IN (SELECT sal FROM emp WHERE deptno = 20);
Salary < ANY in SALES

sql
SELECT *
FROM emp
WHERE sal < ANY (SELECT sal FROM emp WHERE deptno = (SELECT deptno FROM dept WHERE dname='SALES'));
Salary > ANY with commission

sql
SELECT *
FROM emp
WHERE sal > ANY (SELECT sal FROM emp WHERE comm IS NOT NULL);
Hired before ANY in RESEARCH

sql
SELECT *
FROM emp
WHERE hiredate < ANY (SELECT hiredate FROM emp WHERE deptno = (SELECT deptno FROM dept WHERE dname='RESEARCH'));
Salary > ANY ANALYST

sql
SELECT *
FROM emp
WHERE sal > ANY (SELECT sal FROM emp WHERE job='ANALYST');
Salary < ANY PRESIDENT

sql
SELECT *
FROM emp
WHERE sal < ANY (SELECT sal FROM emp WHERE job='PRESIDENT');
🔹 ALL Subqueries
Compare against all values in a set.

Salary < ALL in SALES

sql
SELECT *
FROM emp
WHERE sal < ALL (SELECT sal FROM emp WHERE deptno = (SELECT deptno FROM dept WHERE dname='SALES'));



Salary > ALL with commission

sql
SELECT *
FROM emp
WHERE sal > ALL (SELECT sal FROM emp WHERE comm IS NOT NULL);
Hired before ALL in RESEARCH

sql
SELECT *
FROM emp
WHERE hiredate < ALL (SELECT hiredate FROM emp WHERE deptno = (SELECT deptno FROM dept WHERE dname='RESEARCH'));
Salary > ALL ANALYSTs

sql
SELECT *
FROM emp
WHERE sal > ALL (SELECT sal FROM emp WHERE job='ANALYST');
Salary < ALL PRESIDENTs

sql
SELECT *
FROM emp
WHERE sal < ALL (SELECT sal FROM emp WHERE job='PRESIDENT');
🔹 Correlated Subquery
Subquery depends on outer query row.

Departments with >1 employee

sql
SELECT d.deptno, d.dname
FROM dept d
WHERE 1 < (SELECT COUNT(*) FROM emp e WHERE e.deptno = d.deptno);
