CREATE TABLE Students (
    StudentID INT, StudentName VARCHAR(10)
);

CREATE TABLE Classes (
    ClassID INT, ClassName varchar(10)
);

CREATE TABLE StudentClass (
    StudentID INT, ClassID INT
);

INSERT INTO Students (StudentID, StudentName)
VALUES (1, 'John'),
       (2, 'Matt'),
       (3, 'James');

insert into Classes (ClassID, ClassName) VALUEs (1, 'Maths'),
                                                (2, 'Arts'),
                                                (3, 'History');

insert into StudentClass (StudentID, ClassID) VALUES (1, 1),
                                                     (1, 2),
                                                     (3, 1),
                                                     (3, 2),
                                                     (3, 3);

select *
from students;

select *
from classes;

select *
from studentclass;

-- What will be the possible join if we want to retrieve
-- all the students who have signed up for the classes in the summer

select st.StudentName, cl.ClassName
from students st
inner join studentclass sc on st.StudentID = sc.studentid
Inner Join Classes cl on sc.classid = cl.classid; --Wazne mordo (OPANUJ TO!)

drop table classes; --Usuwa tabele classes

select st.StudentName, cl.ClassName
from students st
inner join studentclass sc on st.StudentID = sc.studentid
Inner Join Classes cl on sc.classid = cl.classid; --Wazne mordo (OPANUJ TO!)

select st.StudentName
from students st
left join studentclass sc on st.StudentID = sc.studentid
WHERE sc.classid is null;

DROP table students;
DROP table classes;
DROP table studentclass;
