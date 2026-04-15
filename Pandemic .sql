/*This Dataset has been studied and we want I analysed it by extracting as many questions as possible in order to be informed and to facilitate decision-making.*/

--Q1. Show all record in the dataset.
SELECT*
FROM Historical_pandemic_Epidemic_Dataset;

--Q2. Find the distinct WHO classification of diseases.
SELECT DISTINCT who_classificati
from Historical_pandemic_Epidemic_Dataset;

--Q3. Find the distinct pathogen type
SELECT DISTINCT Pathogen_type
From Historical_pandemic_Epidermic_Dataset;

--Q4. Find all the Disease that started after 2015
SELECT event_name, start_year
from Historical _pandemic _Epidermic_Dataset;
where start_year>2015

--Q5. Find all diseases that lasted between 2000 and 2024
SELECT event_name, start_year
where start_year Between 2000 and 2024;

--Q6. Find the disease that originated from Africa
SELECT event_name, start_year
from Historical _Pandemic_Epidermic_Dataset
where origin_region ='Africa';

--Q7.Find the region where the disease broke out
select Distinct event_name, origin_region 
where Historical_Pandemic_Epidermic_Dataset;

--Q8. find the name of diseasethat contain string Africa in them 
select event_name
from Historical_Pandemic_Epidermic_Dataset
where event_name Like'%Africa%';

--Q9.Find diesease that are either high or Catastrophic 
select event_name,mortality_scale
from Historical_Pandemic_Epidermic_Dataset
Where mortality_scale in ('High','Catastrophic');

--Q10. Count diseases by transmission method 
Select primary_transmis, Count (*) As count_of_numbers
from Historical_Pandemic_Epidermic_Dataset
Group BY primary_tranmis;

--Q11. Calculate total estimated deaths from all diseases 
select SUM(estimated_deaths)
from Historical_pandemic_Epidermic_Dataset;

--Q12. Find the diseases with the highest estimated deaths
Select Event_name, estimated_deaths
from Historical_Pendamic_Epidermic_Dataset
GROup BY 1
Order BY 2 DESC
LIMIT 5;.

--Q13. Find the names of diseases as the year advance
select event_name,start_year
From Historical_Pandemic_Epidermic_Dataset
GROUP BY 1
ORDER BY 2 ASC;

--Q14. which containment method appears more than 2 times 
select containmemt meth, count(*) As count_containment_method
from Historical_Pandemic_Epidermic_Dataset
Group BY containment_meth
Having count(*)>2
order BY 2 DESC
limit 5;

--Q15. Categories name of diseases by severity using the estimated deaths 
select 


