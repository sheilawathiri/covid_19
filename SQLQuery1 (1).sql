


select location, date, [total_cases], [new_cases], [total_deaths], [Population_density]
from  [Portfolio project]..[covid-deaths]
Order by 1,2

  looking at total cases vs total deaths

  select location, date, [total_cases], [new_cases], [total_deaths]
from  [Portfolio project]..[covid-deaths]

select*
from [Portfolio project]..[covid-deaths]
where total_deaths>5000

select*
from [Portfolio project]..[covid-deaths]
where location like '%state%'

select total_cases, total_deaths
from [Portfolio project]..[covid-deaths]
where  [total_cases] is not null  and total_deaths is not null

select total_cases, total_deaths
from [Portfolio project]..[covid-deaths]

select   max total_cases AS highestinfectiouscount,
from  [Portfolio project]..[covid-deaths]
where location like'%state%'
Order by  desc

select location, date, [total_cases], [new_cases], [total_deaths], [Population_density]
from  [Portfolio project]..[covid-deaths]
EXEC sp_help 'total_cases';

ALTER TABLE [covid-deaths]
ALTER COLUMN  [total_cases] numeric 

ALTER TABLE [covid-deaths]
ALTER COLUMN  [total_deaths] numeric

select location, date, [total_cases], [new_cases], [total_deaths], 
([total_deaths]/[total_cases])*100 as deathpercentage 
from  [Portfolio project]..[covid-deaths]
where location like '%state%'
  total deaths vs total cases in kenya 

select location, date, [total_cases], [new_cases], [total_deaths],
([total_deaths]/[total_cases])*100 as deathpercentage 
from  [Portfolio project]..[covid-deaths]
where location like '%Kenya%'

select location, date, [population_density] [total_cases], 
([total_cases]/[population_density])*100 as percentpopulationinfected
from  [Portfolio project]..[covid-deaths]
where location like '%Kenya%'

ALTER TABLE [covid-deaths]
ALTER COLUMN  [population_density] numeric

select location, date, [total_cases], [new_cases], [total_deaths], [Population_density]
from  [Portfolio project]..[covid-deaths]
where location like '%Kenya%'
--find the percentage of the total population that was affected
select location, date, [population_density] [total_cases], 
([total_cases]/[population_density])*100 as percentpopulationinfected
from  [Portfolio project]..[covid-deaths]
where location like '%Kenya%'

--find the highest infection count and the highest percentage of population infected
select location, max(([total_cases]as numeric)) AS highestinfectioncount, max(cast([total_cases]/[population_density]as numeric))*100 as percentpopulationinfected
from  [Portfolio project]..[covid-deaths]
group by location, population_density
order by population_density
SELECT NULLIF

--showing countries with the highest death count per population
 SELECT location, max([total_deaths]) AS totaldeathcount
from  [Portfolio project]..[covid-deaths]
group by location, population_density
ORDER BY 1,2

 SELECT location, max([total_deaths]) AS totaldeathcount
from  [Portfolio project]..[covid-deaths]
group by location, population_density
order by totaldeathcount desc 


 SELECT location, max([total_deaths]) AS totaldeathcount
from  [Portfolio project]..[covid-deaths]
WHERE CONTINENT IS NOT NULL
group by LOCATION
ORDER BY totaldeathcount desc 