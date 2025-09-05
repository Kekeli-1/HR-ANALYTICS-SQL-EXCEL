select * from train_data;
select attrition, count(attrition) as total from train_data td 
group by attrition;
select gender, attrition, count(attrition) as total from train_data td 
where attrition = 1
group by gender, attrition;
select Education_level, attrition, count(attrition) as total from train_data td 
group by Education_level, attrition;
select avg(DATEDIFF( LastWorkingDate,Dateofjoining ))/ 365 from train_data
where lastWorkingDate is not null;
select avg(datediff(str_to_date(lastworkingdate, '%Y-%m-%d'), str_to_date(dateofjoining, '%Y-%m-%d'))) / 365 as avg_t from train_data td 
where lastWorkingDate is not null;
select Education_level, round(avg(salary),2) as avg_salary from train_data
group by Education_level
order by avg_salary desc;
select sum(salary) as total, attrition from train_data td 
group by attrition;
select count(Emp_id) as total,case when age < 25 then 'under 25' when age between 25 and 30 then '25-30' when age between 36 and 45 then '36-45' else '45+' end as age_group
from train_data td 
group by age_group;
select attrition, count(attrition) as total, case when age < 25 then 'under 25' when age between 25 and 30 then '25-30' when age between 36 and 45 then '36-45' else '45+' end as  age_group
from train_data td 
group by age_group, attrition
order by total desc;
select * from train_data
select Gender, Designation, count(gender) as total from train_data 
group by Gender, Designation
order by Designation asc;
select Designation, count(emp_id) as total from train_data td 
group by designation 
order by total desc;
select designation, count(*) from train_data
group by designation
select count(attrition) as total, Designation from train_data 
where Attrition = 1
group by Designation 
order by total desc;
select city, count(emp_id) as total from train_data
group by City 
order by total desc;
select city,attrition, count(attrition) as total from train_data
group by City, attrition 
order by total desc;
select `Total Business Value` , Attrition from train_data td 
where attrition = 1;
select avg(`Total Business Value`) as AVG, Quarterly Rating from train_data td 
Group by Quarterly Rating;
select count(emp_id) as total, `Quarterly Rating` from train_data td 
where attrition = 1
group by `Quarterly Rating`;
select sum(`Total Business Value`) as total,`Quarterly Rating`, attrition from train_data td 
group by attrition,`Quarterly Rating` 
order by total desc;
select attrition, count(attrition) as total, year(STR_TO_DATE(Date, '%m/%d/%Y')) as years from train_data
group by year(STR_TO_DATE(Date, '%m/%d/%Y')),attrition
order by total desc;
select round(avg(attrition) ,2)  as perc from train_data
select round(avg(salary),2) from train_data;
select round(avg(`quarterly rating`),2) from train_data
select sum(salary) as total from train_data;
