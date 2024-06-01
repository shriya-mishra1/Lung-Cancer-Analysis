use DB;

select * from lung_cancer;

-- Total values
SELECT COUNT(*) AS total_values
FROM lung_cancer;

-- the average age of individuals
SELECT AVG(Age) AS average_age
FROM lung_cancer;

-- Total Smokers
SELECT COUNT(*) AS total_smokers
FROM lung_cancer
WHERE Smoking_Category != 'Non-Smokers';

-- Details on Mediocre Drinkers
SELECT Name, Age, Alcohol_Category
FROM lung_cancer
WHERE Alcohol_Category = 'Mediocre Drinkers';

-- the oldest individual 
SELECT 
Top 1
Name, Age
FROM lung_cancer
ORDER BY Age DESC;

-- Name start with A
SELECT Name, Surname
FROM lung_cancer
WHERE Name LIKE 'A%';

-- Heavy Smokers and Mediocre Drinkers
SELECT Name, Age, Alcohol
FROM lung_cancer
WHERE Smoking_Category = 'Heavy Smokers' AND  Alcohol_Category = 'Mediocre Drinkers';

-- the percentage of lung cancer for individuals whose age is greater than 18
SELECT (COUNT(CASE WHEN Result = 1 THEN 1 END) * 100.0 / COUNT(*)) AS lung_cancer_percentage
FROM lung_cancer
WHERE Age > 18;

-- the names and ages of individuals whose names contain the word "John"
SELECT Name, Age
FROM lung_cancer
WHERE Name LIKE '%John%';

--  the count of people who have lung cancer with different 'Smoking Category'
SELECT Smoking_Category, COUNT(*) AS lung_cancer_count
FROM lung_cancer
WHERE Result = 1
GROUP BY Smoking_Category;

-- lung cancer with different 'Alcohol Category
SELECT Alcohol_Category, COUNT(*) AS lung_cancer_count
FROM lung_cancer
WHERE Result = 1
GROUP BY Alcohol_Category;