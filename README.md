# Pewlett Hackard Analysis

## Overview of Project

### Purpose
The purpose of this pewlett hackard analysis was to create two tables in a CSV format using SQL and pgAdmin:
1. A table of all retiring employees per title

2. A table of all retiring employees who are able to participate in a mentorship program

## Results
![Employee Title Summary](https://github.com/Nveatch/Pewlett-Hackard-Analysis/blob/main/Resources/employee_titles.png)

- The position with the most retiring employees is the "Senior Engineer" position, with 25,916 retirees. This accounts for ~30% of the current 85,939 Senior Engineers.

- The position with the second most retiring employees is the "Senior Staff" position, with 24,926 retirees. This also accounts for ~30% of the current 82,024 Senior Staff.

![Mentorship by Title](https://github.com/Nveatch/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_by_title.png)

- Despite roughly the same amount of employees retiring from the "Senior Engineer" and "Senior Staff" positions (and thus needing to be filled), there are almost three times as many potential mentors for "Senior Staff"

- There are no eligible retirees for the mentorship program to mentor for the "Manager" positions that will be open.

## Pewlett Hackard Analysis Summary
**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

72,458 roles will need to be filled assuming all the potential retirees retire.

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**

As mentioned in my results secion, and shown in the second picture, there are significantly more potential mentors for the "Senior Staff" position than the "Senior Engineer" position, despite roughly equal numbers of employees retiring from both positions. If the potential 169 Senior Engineer mentors would be enough for the 25,916 openings would have to be assessed. In addition, as I mentioned as well in the results section, there are not any potential mentors for the two manager roles that would open as a result of the "silver tsunami".

**What two additional tables would you provide to give more insight into the upcoming "silver tsunami"?**

The two tables I would provide are the ones I ran for my own results in the above section:
1. A table that shows the count of all the current employees grouped by their position, in order to see the percentage of retirees compared to the total employees (by position)

2. A table that groups all the potential mentors by their position, in order to see if there are sufficient mentors for each position title  

