SELECT
    MAX(months * salary),
    COUNT(employee_id)
FROM
    employee
WHERE
    (months * salary) = (
        SELECT
            MAX(months * salary)
        FROM
            employee
    );