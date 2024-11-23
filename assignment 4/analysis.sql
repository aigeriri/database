-- 1. Общее количество записей в таблице
SELECT COUNT(*) AS total_customers FROM customerdata;

-- 2. Средний возраст клиентов
SELECT AVG(age) AS average_age FROM customerdata;

-- 3. Средний доход клиентов
SELECT AVG(income) AS average_income FROM customerdata;

-- 4. Средний балл расходов (Spending Score)
SELECT AVG(spending_score) AS average_spending_score FROM customerdata;

-- 5. Среднее количество лет членства (Membership Years)
SELECT AVG(membership_years) AS average_membership_years FROM customerdata;

-- 6. Максимальная сумма последней покупки
SELECT MAX(last_purchase_amount) AS max_last_purchase_amount FROM customerdata;

-- 7. Клиенты с самой высокой суммой последней покупки
SELECT * 
FROM customerdata
WHERE last_purchase_amount = (SELECT MAX(last_purchase_amount) FROM customerdata);

-- 8. Распределение клиентов по возрасту (группировка по диапазонам)
SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+' 
    END AS age_group,
    COUNT(*) AS total_customers
FROM customerdata
GROUP BY age_group
ORDER BY age_group;

-- 9. Клиенты с наибольшей частотой покупок
SELECT * 
FROM customerdata
WHERE purchase_frequency = (SELECT MAX(purchase_frequency) FROM customerdata);

-- 10. Общий доход клиентов
SELECT SUM(income) AS total_income FROM customerdata;

-- 11. Процент клиентов с баллом расходов выше среднего
WITH avg_score AS (
    SELECT AVG(spending_score) AS average_score FROM customerdata
)
SELECT 
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customerdata) AS percentage_above_avg
FROM customerdata, avg_score
WHERE spending_score > avg_score.average_score;

-- 12. Клиенты с минимальным количеством лет членства
SELECT * 
FROM customerdata
WHERE membership_years = (SELECT MIN(membership_years) FROM customerdata);

-- 13. Клиенты с доходом выше 75-го перцентиля
WITH percentiles AS (
    SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY income) AS p75 FROM customerdata
)
SELECT * 
FROM customerdata, percentiles
WHERE income > percentiles.p75;

-- 14. Распределение суммы последней покупки по категориям
SELECT 
    CASE 
        WHEN last_purchase_amount < 1000 THEN 'Low Spenders'
        WHEN last_purchase_amount BETWEEN 1000 AND 5000 THEN 'Mid Spenders'
        ELSE 'High Spenders'
    END AS spending_category,
    COUNT(*) AS total_customers
FROM customerdata
GROUP BY spending_category
ORDER BY spending_category;

-- 15. Клиенты с наименьшим баллом расходов
SELECT * 
FROM customerdata
WHERE spending_score = (SELECT MIN(spending_score) FROM customerdata);
