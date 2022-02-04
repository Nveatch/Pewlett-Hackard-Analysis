---------------------------------------------------------------- Deliverable 1

--Retirement titles table 
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (ret.emp_no) ret.emp_no, 
	ret.first_name,
	ret.last_name,
	ret.title
INTO unique_titles
FROM retirement_titles as ret
WHERE (ret.to_date = '9999-01-01')
ORDER BY ret.emp_no, ret.to_date DESC;

-- Using count() to get number retiring per title
SELECT COUNT(uni.title), uni.title
INTO retiring_titles
FROM unique_titles as uni
GROUP BY uni.title
ORDER BY COUNT DESC;


---------------------------------------------------------------- Deliverable 2

-- Mentorship eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-1-1' AND '1965-12-31')
ORDER BY e.emp_no;

