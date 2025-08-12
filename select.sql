--4th part - Questions(A-E)

--A)
SELECT DISTINCT A.Name
FROM PARTICIPATION P1
JOIN PARTICIPATION P2 ON P1.Athlete = P2.Athlete 
                      AND P1.Event = P2.Event 
                      AND P1.Medal IS NULL
                      AND P1.Year = 2024
                      AND P2.Year < 2024
                      AND P2.Medal IN ('Gold','Silver','Bronze')
JOIN ATHLETE A ON A.AthleteID = P1.Athlete; --displays the athletes that are to participate in the 2024-Olympics,
                                              --who have also earned a medal in the event they are participating in

--B)
SELECT C.Name AS COUNTRY, E.EName AS EVENT, COUNT(DISTINCT P.Athlete) AS NumOfAthletes
FROM COUNTRY C
JOIN ATHLETE A ON C.NOC = A.HasTeam
JOIN PARTICIPATION P ON A.AthleteID = P.Athlete
JOIN GAMES G ON P.Year = G.Year AND P.Period = G.Period
JOIN EVENT E ON P.Event = E.EName
WHERE P.Year = 2022
GROUP BY C.Name, E.EName
ORDER BY C.Name, E.EName; --displays the number of athletes that participated in the same event
                            --during the latest Olympic Games, their respective countries and the event's name

--C)
CREATE VIEW C_QUESTION AS
SELECT e.EName, p.Year
FROM EVENT e JOIN PARTICIPATION p ON e.EName = p.Event;

SELECT ENAME
FROM C_QUESTION
GROUP BY EName
HAVING COUNT(EName) < 2; --displays the events that have taken place in less than two Olympic Games

--D)
CREATE VIEW D_QUESTION AS 
SELECT c.Name AS Country, COUNT(p.Medal) AS GoldMedals
FROM COUNTRY c
JOIN ATHLETE a ON c.NOC = a.HasTeam
JOIN PARTICIPATION p ON a.AthleteID = p.Athlete
WHERE p.Medal = 'Gold' AND p.Year < 2024
GROUP BY c.Name
ORDER BY GoldMedals DESC;

SELECT COUNTRY
FROM D_QUESTION
WHERE ROWNUM=1; --displays the name of the country that has won the most Gold medals

--E)
SELECT COUNT(*) NumOfParticipations
FROM PARTICIPATION p
INNER JOIN ATHLETE a ON p.Athlete = a.AthleteID
WHERE a.Name = 'Usain Bolt'; --displays the number of participations of a specific athlete (Chosen Athlete -> Usain Bolt)

