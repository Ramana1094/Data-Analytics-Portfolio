use metric_spike;
select * from users;

alter table users
modify created_at datetime Not Null;

CREATE TABLE IF NOT EXISTS `events` (
  `user_id` bigint(20) NOT NULL,
  `occured_at` datetime NOT NULL,
  `event_type` varchar(60) NOT NULL,
  `event_name` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL,
  `device` varchar(60) NOT NULL,
  `user_type` bigint(20) NOT NULL
);


CREATE TABLE IF NOT EXISTS `email_events` (
  `user_id` bigint(20) NOT NULL,
  `occured_at` datetime NOT NULL,
  `action` varchar(60) NOT NULL,
  `user_type` bigint(20) NOT NULL
);

-- 1. Weekly User Engagement

-- Grouped by week (all users) 
SELECT EXTRACT(week from occured_at) as weeks, count(Distinct user_id) as users_per_week
FROM events 
WHERE event_type = 'engagement'
GROUP BY EXTRACT(week from occured_at);

-- Grouped by user (No of events for a user per week)
Select user_id, Round(count(*)/52.14, 2) as events_per_week
From events
WHERE event_type = 'engagement'
Group By user_id
Order by user_id;


-- 2.  User Growth

SELECT yr_month,  Users, ROUND((((Users/LAG(Users,1) Over(Order by yr_month))-1)*100), 2) as Growth
From(
	SELECT 
    EXTRACT( YEAR_MONTH FROM created_at) as yr_month,
    Count(activated_at) as Users
	From users
	Where activated_at NOT IN ("")
	GROUP BY 1
	ORDER BY 1) sub;
    
SELECT extract(year from created_at) FROM metric_spike.users
group by extract(year from created_at)
 ;


 -- 3.    Yearly retention

 -- 31 possible first login years
 
 SELECT first_year AS "Year_No",
SUM(CASE WHEN year_number = 0 THEN 1 ELSE 0 END) AS "Year 0",
SUM(CASE WHEN year_number = 1 THEN 1 ELSE 0 END) AS "Year 1",
SUM(CASE WHEN year_number = 2 THEN 1 ELSE 0 END) AS "Year 2",
SUM(CASE WHEN year_number = 3 THEN 1 ELSE 0 END) AS "Year 3",
SUM(CASE WHEN year_number = 4 THEN 1 ELSE 0 END) AS "Year 4",
SUM(CASE WHEN year_number = 5 THEN 1 ELSE 0 END) AS "Year 5",
SUM(CASE WHEN year_number = 6 THEN 1 ELSE 0 END) AS "Year 6",
SUM(CASE WHEN year_number = 7 THEN 1 ELSE 0 END) AS "Year 7",
SUM(CASE WHEN year_number = 8 THEN 1 ELSE 0 END) AS "Year 8",
SUM(CASE WHEN year_number = 9 THEN 1 ELSE 0 END) AS "Year 9",
SUM(CASE WHEN year_number = 10 THEN 1 ELSE 0 END) AS "Year 10",
SUM(CASE WHEN year_number = 11 THEN 1 ELSE 0 END) AS "Year 11",
SUM(CASE WHEN year_number = 12 THEN 1 ELSE 0 END) AS "Year 12",
SUM(CASE WHEN year_number = 13 THEN 1 ELSE 0 END) AS "Year 13",
SUM(CASE WHEN year_number = 14 THEN 1 ELSE 0 END) AS "Year 14",
SUM(CASE WHEN year_number = 15 THEN 1 ELSE 0 END) AS "Year 15",
SUM(CASE WHEN year_number = 16 THEN 1 ELSE 0 END) AS "Year 16",
SUM(CASE WHEN year_number = 17 THEN 1 ELSE 0 END) AS "Year 17",
SUM(CASE WHEN year_number = 18 THEN 1 ELSE 0 END) AS "Year 18",
SUM(CASE WHEN year_number = 19 THEN 1 ELSE 0 END) AS "Year 19",
SUM(CASE WHEN year_number = 20 THEN 1 ELSE 0 END) AS "Year 20",
SUM(CASE WHEN year_number = 21 THEN 1 ELSE 0 END) AS "Year 21",
SUM(CASE WHEN year_number = 22 THEN 1 ELSE 0 END) AS "Year 22",
SUM(CASE WHEN year_number = 23 THEN 1 ELSE 0 END) AS "Year 23",
SUM(CASE WHEN year_number = 24 THEN 1 ELSE 0 END) AS "Year 24",
SUM(CASE WHEN year_number = 25 THEN 1 ELSE 0 END) AS "Year 25",
SUM(CASE WHEN year_number = 26 THEN 1 ELSE 0 END) AS "Year 26",
SUM(CASE WHEN year_number = 27 THEN 1 ELSE 0 END) AS "Year 27",
SUM(CASE WHEN year_number = 28 THEN 1 ELSE 0 END) AS "Year 28",
SUM(CASE WHEN year_number = 29 THEN 1 ELSE 0 END) AS "Year 29",
SUM(CASE WHEN year_number = 30 THEN 1 ELSE 0 END) AS "Year 30",
SUM(CASE WHEN year_number = 31 THEN 1 ELSE 0 END) AS "Year 31"
FROM ( 
SELECT logins.user_id, logins.login_year, login1.first_year, (logins.login_year - login1.first_year) AS year_number
FROM 
	(SELECT  user_id, EXTRACT(Year FROM occured_at) AS login_year
	From events
	GROUP BY 1, 2
    ) logins,
	(SELECT  user_id,  MIN(EXTRACT(Year FROM occured_at)) AS first_year 
	From events
	GROUP BY 1
    ) login1
	WHERE logins.user_id = login1.user_id
) sub
GROUP BY first_year
ORDER BY first_year;   


-- 4.  Weekly engagement per device

SELECT extract(week from occured_at) as weeks, device, count(user_id) as device_engagement
FROM events
WHERE event_type = 'engagement' 
GROUP BY extract(week from occured_at), device
ORDER BY extract(week from occured_at);


-- 5. Email engagement analysis

Select week,
Round((weekly_digests/total*100),2) AS "Weekly Digest Rate",
Round((email_opens/total*100),2) AS "Email Open Rate",
Round((email_clickthroughs/total*100),2) AS "Email Clickthrough Rate",
Round((reengagement_emails/total*100),2) AS "Email Reengagement Rate"
FROM ( 
SELECT EXTRACT(WEEK FROM occured_at) as week,
COUNT(CASE  WHEN action  = 'sent_weekly_digest' THEN  user_id ELSE  NULL  END) as weekly_digests, 
COUNT(CASE  WHEN action  = 'email_open' THEN  user_id ELSE  NULL  END) as email_opens,
COUNT(CASE  WHEN action  = 'email_clickthrough' THEN  user_id ELSE  NULL  END) as email_clickthroughs,
COUNT(CASE WHEN action = 'sent_reengagement_email' THEN  user_id ELSE  NULL  END) as reengagement_emails,
COUNT(user_id) AS total 
FROM email_events 
GROUP BY 1 ) sub 
GROUP BY 1 
ORDER BY 1;     