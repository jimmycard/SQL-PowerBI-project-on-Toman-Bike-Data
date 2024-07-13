

----CENTRAL ANALYSIS

---PROJECT: Develop a dashboard for toan bike that displays key performance metric;
----Requirements:
--hourly Revenue analysis 
--profit and revenue trends
--seasonal revenue 
--Rider demographics
---DESIGN : USE the company colors and make sure it is easy to navigate
---DATA SOURCE: Create a database
----ANALYSIS QUESTION: provide recommendations on raisingprices next year 

--CREATE A CTE

WITH cte AS (
    SELECT * FROM bike_share_yr_0
    UNION ALL
    SELECT * FROM bike_share_yr_1 
)
SELECT 
dteday, 
season,
a.yr,
hr,
a.weekday,
hum,
rider_type,
riders,
price,
COGS,
revenue = riders*price,
profit = riders*price - COGS*riders
FROM cte a
left join cost_table b
on a.yr = b.yr


