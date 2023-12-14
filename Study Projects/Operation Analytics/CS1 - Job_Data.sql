use Job_Data;

alter table jobs
modify ds date Not Null;

-- Insert data

Insert into jobs (ds, job_id, actor_id, event, language, time_spent, org)
	Values('2020-10-01', '22','1009', 'transfer', 'Hindi', '20', 'C'), 
		('2020-10-02', '27','1039', 'skip', 'Italian', '29', 'D');
        
Insert into jobs (ds, job_id, actor_id, event, language, time_spent, org)
	Values('2020-10-03', '12','1019', 'transfer', 'Hindi', '20', 'C'), 
		('2020-10-04', '27','1011', 'skip', 'Italian', '9', 'D'),
        ('2020-10-05', '19','1024', 'decision', 'English', '10', 'A'), 
		('2020-09-01', '27','1029', 'skip', 'Persian', '39', 'A'),
		('2020-08-01', '18','1014', 'decision', 'French', '109', 'B'), 
		('2020-09-02', '57','1015', 'skip', 'Arabic', '87', 'D'),
		('2020-09-03', '33','1018', 'decision', 'Hindi', '53', 'A'), 
		('2020-08-02', '65','1020', 'transfer', 'Arabic', '72', 'D'),
		('2020-08-03', '45','1035', 'skip', 'Hindi', '31', 'B'), 
		('2020-09-04', '62','1039', 'transfer', 'French', '86', 'D'),
        ('2020-09-05', '12','1019', 'skip', 'Persian', '84', 'C'), 
		('2020-09-06', '17','1020', 'decision', 'Italian', '17', 'D'),
        ('2020-08-04', '19','1034', 'decision', 'English', '61', 'A'), 
		('2020-09-07', '27','1019', 'skip', 'Persian', '45', 'A'),
		('2020-08-05', '19','1024', 'skip', 'French', '67', 'B'), 
		('2020-10-06', '55','1035', 'decision', 'Arabic', '61', 'C'),
		('2020-10-07', '36','1018', 'transfer', 'Hindi', '43', 'A'), 
		('2020-08-06', '68','1023', 'decision', 'Italian', '82', 'D'),
		('2020-08-07', '41','1037', 'skip', 'French', '39', 'B'), 
		('2020-09-08', '61','1040', 'skip', 'English', '25', 'D'),
		('2020-10-08', '16','1027', 'transfer', 'Hindi', '40', 'C'), 
		('2020-10-09', '27','1011', 'skip', 'Italian', '9', 'D'),
        ('2020-09-09', '12','1027', 'transfer', 'English', '13', 'A'), 
		('2020-08-08', '27','1029', 'decision', 'Persian', '75', 'A'),
		('2020-08-09', '18','1028', 'skip', 'French', '10', 'B'), 
		('2020-09-10', '59','1032', 'skip', 'Arabic', '64', 'C'),
		('2020-09-11', '33','1018', 'transfer', 'Hindi', '29', 'A'), 
		('2020-08-10', '61','1004', 'transfer', 'Italian', '58', 'D'),
		('2020-08-11', '47','1006', 'skip', 'Hindi', '37', 'B'), 
		('2020-09-12', '62','1018', 'decision', 'Italian', '29', 'D'),
		('2020-10-10', '11','1015', 'transfer', 'French', '77', 'C'), 
		('2020-10-11', '27','1011', 'skip', 'Italian', '99', 'D'),
        ('2020-10-11', '14','1029', 'skip', 'English', '142', 'A'), 
		('2020-09-13', '20','1023', 'transfer', 'Persian', '72', 'A'),
		('2020-08-12', '49','1014', 'decision', 'French', '88', 'B'), 
		('2020-09-14', '52','1034', 'decision', 'Arabic', '87', 'C'),
		('2020-09-15', '37','1011', 'decision', 'Hindi', '61', 'A'), 
		('2020-08-13', '60','1023', 'decision', 'French', '52', 'D'),
		('2020-08-14', '37','1025', 'skip', 'Persian', '45', 'B'), 
		('2020-09-16', '18','1029', 'transfer', 'Italian', '13', 'D'),
		('2020-10-12', '11','1039', 'skip', 'Hindi', '26', 'C'), 
		('2020-10-13', '28','1023', 'decision', 'Persian', '17', 'D'),
        ('2020-10-14', '25','1017', 'transfer', 'English', '19', 'A'), 
		('2020-09-17', '29','1036', 'skip', 'Persian', '21', 'A'),
		('2020-08-15', '11','1028', 'decision', 'French', '10', 'B'), 
		('2020-09-18', '34','1019', 'skip', 'Arabic', '74', 'C'),
		('2020-09-19', '17','1008', 'skip', 'Hindi', '43', 'A'), 
		('2020-08-16', '64','1027', 'decision', 'Italian', '22', 'D'),
		('2020-08-17', '75','1025', 'decision', 'French', '20', 'B'), 
		('2020-09-20', '42','1016', 'skip', 'Italian', '134', 'D');
        
Insert into jobs (ds, job_id, actor_id, event, language, time_spent, org)
	Values('2020-10-15', '12','1039', 'transfer', 'Hindi', '30', 'B'), 
		('2020-10-16', '19','1021', 'skip', 'Italian', '19', 'D'),
        ('2020-10-17', '14','1024', 'transfer', 'English', '20', 'A'), 
		('2020-09-21', '22','1019', 'decision', 'Persian', '49', 'A'),
		('2020-08-18', '15','1034', 'skip', 'French', '10', 'B'), 
		('2020-09-22', '56','1025', 'transfer', 'Arabic', '67', 'D'),
		('2020-09-23', '31','1028', 'skip', 'Hindi', '33', 'A'), 
		('2020-08-19', '53','1030', 'transfer', 'Arabic', '42', 'D'),
		('2020-08-20', '41','1025', 'decision', 'Hindi', '41', 'B'), 
		('2020-09-23', '60','1029', 'skip', 'French', '46', 'D'),
        ('2020-09-24', '11','1029', 'decision', 'Persian', '24', 'C'), 
		('2020-09-25', '14','1010', 'decision', 'Italian', '37', 'D'),
        ('2020-08-21', '23','1014', 'decision', 'English', '51', 'A'), 
		('2020-09-26', '20','1039', 'skip', 'Persian', '25', 'A'),
		('2020-08-22', '62','1034', 'decision', 'French', '77', 'B'), 
		('2020-10-18', '51','1015', 'skip', 'Arabic', '31', 'C'),
		('2020-10-19', '18','1028', 'transfer', 'Hindi', '63', 'A'), 
        ('2020-10-19', '18','1028', 'transfer', 'Hindi', '63', 'A'), 
		('2020-08-23', '23','1033', 'skip', 'Italian', '42', 'D'),
		('2020-08-24', '35','1017', 'skip', 'French', '19', 'B'), 
		('2020-09-27', '26','1030', 'skip', 'English', '15', 'D'),
		('2020-10-20', '39','1017', 'transfer', 'Hindi', '50', 'C'), 
		('2020-10-21', '21','1021', 'skip', 'Italian', '9', 'D'),
        ('2020-09-28', '19','1037', 'skip', 'English', '23', 'A'), 
		('2020-08-25', '30','1019', 'decision', 'Persian', '55', 'A'),
		('2020-08-26', '11','1038', 'skip', 'French', '11', 'B'), 
		('2020-09-29', '53','1022', 'skip', 'Arabic', '15', 'C'),
		('2020-09-30', '54','1028', 'transfer', 'Hindi', '21', 'A'), 
		('2020-08-27', '67','1014', 'transfer', 'Italian', '80', 'D'),
		('2020-08-28', '45','1036', 'transfer', 'Hindi', '67', 'B'), 
		('2020-09-29', '64','1028', 'decision', 'Italian', '19', 'D'),
		('2020-10-22', '61','1035', 'decision', 'French', '67', 'C'), 
		('2020-10-23', '65','1021', 'skip', 'Italian', '90', 'D'),
        ('2020-10-24', '43','1019', 'decision', 'English', '152', 'A'), 
		('2020-08-29', '47','1033', 'skip', 'Persian', '72', 'A'),
		('2020-08-30', '59','1034', 'decision', 'French', '78', 'B'),
        ('2020-10-24', '11','1039', 'transfer', 'Italian', '30', 'B'), 
		('2020-10-25', '14','1022', 'skip', 'Persian', '19', 'D'),
        ('2020-10-26', '14','1024', 'transfer', 'Hindi', '20', 'A'), 
		('2020-08-31', '21','1019', 'skip', 'Persian', '49', 'A'),
		('2020-10-27', '19','1034', 'skip', 'French', '15', 'B'), 
		('2020-10-28', '51','1026', 'transfer', 'French', '67', 'D'),
		('2020-10-29', '33','1021', 'skip', 'English', '33', 'A'), 
		('2020-10-30', '52','1036', 'transfer', 'Persian', '42', 'D'),
		('2020-10-31', '40','1022', 'skip', 'Hindi', '41', 'B'), 
		('2020-11-01', '61','1023', 'skip', 'Italian', '46', 'D'),
        ('2020-11-02', '16','1028', 'decision', 'Persian', '39', 'C'), 
		('2020-11-03', '19','1011', 'decision', 'Italian', '21', 'D'),
        ('2020-11-04', '26','1013', 'skip', 'English', '50', 'A'), 
		('2020-11-05', '20','1017', 'skip', 'Persian', '20', 'A'),
		('2020-11-06', '67','1023', 'decision', 'Arabic', '57', 'B'), 
		('2020-11-07', '56','1014', 'transfer', 'Arabic', '31', 'C'),
		('2020-11-08', '11','1022', 'transfer', 'French', '60', 'A'), 
        ('2020-11-09', '13','1025', 'transfer', 'Hindi', '53', 'A'), 
		('2020-11-10', '23','1023', 'decision', 'Italian', '42', 'D'),
		('2020-11-11', '37','1012', 'skip', 'French', '24', 'B'), 
		('2020-11-12', '21','1030', 'skip', 'English', '45', 'D'),
		('2020-11-13', '38','1014', 'transfer', 'Hindi', '50', 'C'), 
		('2020-11-14', '24','1020', 'skip', 'Italian', '19', 'D'),
        ('2020-11-15', '67','1026', 'skip', 'French', '40', 'D'),
        ('2020-11-16', '13','1032', 'decision', 'Persian', '14', 'C'), 
		('2020-11-17', '18','1011', 'decision', 'Italian', '57', 'D'),
        ('2020-11-18', '09','1023', 'decision', 'English', '21', 'A'), 
		('2020-11-19', '28','1037', 'skip', 'Persian', '20', 'A'),
		('2020-11-19', '25','1031', 'decision', 'French', '67', 'B'), 
		('2020-11-20', '29','1010', 'skip', 'Arabic', '21', 'C'),
		('2020-11-21', '11','1024', 'transfer', 'Hindi', '53', 'A'), 
        ('2020-11-21', '16','1022', 'transfer', 'Hindi', '93', 'A'), 
		('2020-11-22', '22','1028', 'skip', 'Italian', '12', 'D'),
		('2020-11-23', '30','1017', 'skip', 'French', '17', 'B'), 
		('2020-11-23', '21','1030', 'skip', 'English', '10', 'D'),
		('2020-11-24', '36','1027', 'transfer', 'Hindi', '20', 'C'), 
		('2020-11-24', '17','1011', 'skip', 'Italian', '07', 'D');
        
-- Adding a few duplicates.        
        
Insert into jobs (ds, job_id, actor_id, event, language, time_spent, org)
	Values('2020-10-21', '21','1021', 'skip', 'Italian', '9', 'D'), 
		('2020-08-28', '45','1036', 'transfer', 'Hindi', '67', 'B'), 
       ('2020-10-19', '18','1028', 'transfer', 'Hindi', '63', 'A');
		
Select count(*) from jobs;
		
-- 1. Jobs reviewed per hour per day

Select ds as Dates, Round((COUNT(job_id)/SUM(time_spent))*3600) As Jobs_Reviewed
From jobs
Where ds between '2020-11-01' and '2020-11-30'
Group By ds
Order by ds;

-- 2. 

-- daily-throughput : Total events per second in a day
-- rolling_avg_throughput : Avg of last 7 daily_throughput (current row + previous 6 rows) 
-- 7_day_throughput : Total events per second in a week

select ds, Count, time_spent, daily_throughput, 
Round(Avg(daily_throughput) Over (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),3 ) as rolling_avg_throughput,
7_day_throughput
from(
Select ds, count(event) as Count, 
time_spent, Round((count(event)/sum(time_spent)),3) as daily_throughput,
Round(count(event) OVER (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)/
sum(time_spent) OVER (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),3)
as 7_day_throughput
from jobs
group by ds) as A;



-- 3. Percentage share of each language in last 30 days

select ds, language,
Round(count(*) Over(partition by language, (ds <= date_sub(ds, INTERVAL -30 DAY)) order by ds),2) as lang_event,
count(*) Over(partition by (ds <= date_sub(ds, INTERVAL -30 DAY)) order by ds) as total_event,
 (100*count(*) Over(partition by language, (ds <= date_sub(ds, INTERVAL -30 DAY)) order by ds)
/count(*) Over(partition by (ds <= date_sub(ds, INTERVAL -30 DAY)) order by ds)) as percentage
from jobs
order by ds;

-- 4. Duplicate rows

SELECT ds, job_id, actor_id, event, language, time_spent, org, count(*) as duplicates
FROM jobs 
GROUP BY ds, job_id, actor_id, event, language, time_spent, org
HAVING COUNT(*) > 1; 