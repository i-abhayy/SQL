# Write your MySQL query statement below
DELETE FROM Person
WHERE id IN (
    SELECT id
    FROM (
        SELECT id
        FROM Person
        WHERE id NOT IN (
            SELECT MIN(id)
            FROM Person
            GROUP BY email
        )
    ) AS duplicate_ids
);