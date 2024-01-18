-- Select no. of Students and Faculties in each department....
SELECT 
    d.dname AS Department,
    (SELECT COUNT(*) FROM Student s WHERE s.did = d.did) AS NumberOfStudents,
    (SELECT COUNT(*) FROM Faculty f WHERE f.did = d.did) AS NumberOfFaculties
FROM Department d;

-- Select no. of courses taken by each department....
SELECT d.name AS Department
    (SELECT COUNT(*) FROM Courses c WHERE c.did = d.did) AS NumberOfCourses
FROM Department d;

SELECT * FROM Course 
WHERE did = (
    SELECT did FROM Department
    WHERE dname="Computer Science"
);

SELECT count(*) FROM Student 
WHERE did = (
    SELECT did FROM Department
    WHERE dname="Electronics"     
);


-- Select no. of art objects created by each artist
SELECT artist_name,
    (SELECT COUNT(*) FROM ArtObject ao WHERE a.artist_id = ao.artist_id) AS artObjectCount
FROM Artist a;

SELECT doctor_name AS Doctor,
    (SELECT count(*) FROM Patient p WHERE d.doctor_id = p.d_id) AS CountOfPatients
FROM Doctor d;