SELECT
    Outstanding_Action,
    Progression_Outcome,
    COUNT(*) AS Total_Cases,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(PARTITION BY Outstanding_Action),
        2
    ) AS Percentage
FROM student_followup_prioritisation_final
GROUP BY Outstanding_Action, Progression_Outcome
ORDER BY Outstanding_Action;