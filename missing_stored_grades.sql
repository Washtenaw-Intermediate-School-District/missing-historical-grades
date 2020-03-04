SELECT 
  students.lastfirst, 
  students.student_number, 
  storedgrades.course_name, 
  storedgrades.storecode, 
  storedgrades.grade, 
  storedgrades.teacher_name

FROM storedgrades
    JOIN students ON storedgrades.studentid = students.id

WHERE
    storedgrades.termid = 2901
    AND storedgrades.schoolid = 9404
    AND storedgrades.grade IS NULL
    AND storedgrades.storecode NOT LIKE 'E1'
    AND (
          storedgrades.course_name LIKE ('Language Arts%') 
          OR storedgrades.course_name LIKE ('Math%') 
          OR storedgrades.course_name LIKE ('Science%') 
          OR storedgrades.course_name LIKE ('Social Studies%')
        )
    
ORDER BY
    students.lastfirst
