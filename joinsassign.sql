.

🔹 INNER JOIN (EMP & DEPT)
sql
SELECT e.*, d.*
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.job = 'CLERK';
sql
SELECT e.*, d.*
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.sal > 1500;
sql
SELECT e.ename, d.loc
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE d.loc LIKE '%a%';
sql
SELECT e.*, d.*
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.deptno IN (20,30);
sql
SELECT e.*, d.*
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.sal > (SELECT sal FROM emp WHERE ename='MARTIN');
sql
SELECT e.ename, e.sal, e.deptno, d.loc
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.hiredate > '31-DEC-1981' AND e.deptno IN (10,20);
sql
SELECT d.loc, COUNT(*) AS emp_count
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
GROUP BY d.loc;
sql
SELECT d.dname, e.hiredate
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.hiredate > '31-DEC-1983' AND d.dname IN ('ACCOUNTING','RESEARCH');
sql
SELECT e.ename, d.dname
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.comm IS NOT NULL AND e.deptno IN (10,30);
sql
SELECT d.dname, e.empno
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.empno IN (7839,7902) AND d.loc='NEW YORK';
🔹 CROSS JOIN (EMP & DEPT)
sql
SELECT e.*, d.*
FROM emp e NATURAL JOIN dept;
sql
SELECT e.ename, d.dname, d.loc
FROM emp e NATURAL JOIN dept;
sql
SELECT e.ename, d.dname
FROM emp e NATURAL JOIN dept
WHERE e.job='CLERK';
sql
SELECT e.ename, e.sal, d.loc
FROM emp e NATURAL JOIN dept
WHERE e.sal > 1500;
sql
SELECT e.ename, d.dname, e.hiredate
FROM emp e NATURAL JOIN dept
WHERE e.hiredate > '31-DEC-1981';
🔹 NATURAL JOIN (EMP & DEPT)
(Same as above, since CROSS JOIN section in your file actually uses NATURAL JOIN.)

🔹 ASSIGNMENT ON INNER JOIN
sql
SELECT e.ename, d.loc
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno;
sql
SELECT d.dname, e.sal
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE d.dname='ACCOUNTING';
sql
SELECT d.dname, (e.sal*12) AS annual_salary
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.sal > 2340;
sql
SELECT e.ename, d.dname
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE d.dname LIKE '%a%';
sql
SELECT e.ename, d.dname
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.job='SALESMAN';
sql
SELECT d.dname, e.job
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.job LIKE 'S%' AND d.dname LIKE 'S%';
sql
SELECT d.dname, e.mgr
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.mgr=7839;
sql
SELECT d.dname, e.hiredate
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.hiredate > '31-DEC-1983' AND d.dname IN ('ACCOUNTING','RESEARCH');
sql
SELECT e.ename, d.dname
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.comm IS NOT NULL AND e.deptno IN (10,30);
sql
SELECT d.dname, e.empno
FROM emp e INNER JOIN dept d ON e.deptno = d.deptno
WHERE e.empno IN (7839,7902) AND d.loc='NEW YORK';
🔹 LEFT JOIN (EMP & DEPT)
Example:

sql
SELECT e.ename, d.dname
FROM emp e LEFT JOIN dept d ON e.deptno = d.deptno;
🔹 RIGHT JOIN (EMP & DEPT)
Example:

sql
SELECT d.dname, e.ename
FROM emp e RIGHT JOIN dept d ON e.deptno = d.deptno;
🔹 FULL OUTER JOIN (EMP & DEPT)
Example:

sql
SELECT e.ename, d.dname
FROM emp e FULL OUTER JOIN dept d ON e.deptno = d.deptno;
🔹 SELF JOIN (EMP)
sql
SELECT e.ename AS employee, m.ename AS manager
FROM emp e JOIN emp m ON e.mgr = m.empno;
sql
SELECT e.ename, m.sal AS manager_salary
FROM emp e JOIN emp m ON e.mgr = m.empno
WHERE e.sal > 1300;
sql
SELECT e.*, m.sal AS manager_salary
FROM emp e JOIN emp m ON e.mgr = m.empno
WHERE e.sal > m.sal;
sql
SELECT m.ename AS manager, COUNT(*) AS num_employees
FROM emp e JOIN emp m ON e.mgr = m.empno
GROUP BY m.ename;
sql
SELECT e.ename AS employee, e.sal AS emp_salary, m.ename AS manager, m.sal AS mgr_salary
FROM emp e JOIN emp m ON e.mgr = m.empno
WHERE e.sal > m.sal;
🔹 Customers, Orders, Products Joins
Example:

sql
SELECT c.cust_name, p.prod_name, o.quantity, o.amount, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id;
