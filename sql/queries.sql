SELECT*
FROM health_data 
LIMIT 10;

--How many patients were admitted in total?
SELECT COUNT(name) AS total_patients
FROM health_data;

--Which medical conditions are the most common?
SELECT	
	medical_condition ,
	count(medical_condition) as total_count
FROM health_data
GROUP BY medical_condition 
order by count(medical_condition) desc;

--What is the average billing amount for each medical condition?
SELECT
	medical_condition,
	ROUND(AVG(billing_amount),2) as avg_amount
FROM health_data
GROUP BY medical_condition;

--Which insurance provider has the highest total billing?
SELECT 
	insurance_provider,
	ROUND(SUM(billing_amount)) as total_amount
FROM health_data
GROUP BY insurance_provider
order by total_amount desc
LIMIt 1;

--What is the average length of stay for each admission type?
SELECT 
	admission_type, 
	ROUND(AVG(stay_length),2) as avg_stay
FROM health_data
GROUP BY admission_type;

--How many male and female patients are there?
select 
	gender,
	COUNT(gender) as total
FROM health_data
GROUP BY gender;

--How many patients came for each admission type?
SELECT 
	admission_type,
	COUNT(name) as total
FROM health_data
GROUP BY admission_type	;

--How many patients have an abnormal test result?
SELECT 
	test_results,
	COUNT(name) AS total_count
FROM health_data 
WHERE test_results = 'Abnormal' 
GROUP BY test_results;   



