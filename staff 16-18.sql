use hranalytics;
#SELECT * FROM hranalytics.`staff 16-18`;
describe staff_16_18;
select * from staff_16_18 ;

 
 select  replace(`Termination Date`,'','31-03-2018') from staff_16_18 where  `Termination Date` = '' or `Termination Date` is null;
 
 #UPDATE staff_16_18 SET `Termination Date` = '31-03-2018' WHERE `Termination Date` = '' ;
 #UPDATE staff_16_18 SET `Termination Date` = '2018-03-31' WHERE `Termination Date` = '31-03-2018' ;
 
select * from staff_16_18  WHERE `Termination Date` = '' ;

select  (`Employee No`), (`Employee Name`), 
sum(`Total Hours`) as 'Total Hours', 
sum(`Total Available Hours`) as 'Total Available Hours',
round(sum(`Total Work Hours`),2) as 'Total Work Hours', 
sum(`Total Leave Hours`) as 'Total Leave Hours',
sum(`Total Training Hours`) as 'Total Training Hours',
sum(`Total BD Hours`) as  'Total BD Hours',
sum(`Total NC Hours`) as 'Total NC Hours', 
round(sum(`Total Utilization%`)/2,2) as 'Total Utilization%',
round(datediff((`Termination Date`), (`Join Date`))/365,2) AS 'No of Working Years',
(`Profit Center`), (`Employee Position`), (`Employee Location`),
(`Employee Category`), (`Supervisor name`), (`People Group`), (`Current Status`)
from staff_16_18 group by `Employee Name`;
 
 
 select (`Termination Date`), (`Join Date`),  round(datediff((`Termination Date`), (`Join Date`))/365,2) AS 'No of Working Years'
 from staff_16_18;
 
 
 SELECT
    (`Termination Date`),
    (`Join Date`),
    round(datediff((`Termination Date`) , (`Join Date`))/365,2) AS 'No of Working Years'
FROM
    staff_16_18
 