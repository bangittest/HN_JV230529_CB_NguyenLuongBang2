CREATE DATABASE QUANLYDIEMTHI;
USE QUANLYDIEMTHI;

CREATE TABLE STUDENT(
	studentId VARCHAR(4) NOT NULL PRIMARY KEY,
    studentName VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    gender BIT(1) NOT NULL,
    address TEXT NOT NULL,
    phoneNumber VARCHAR(45) UNIQUE
);

CREATE TABLE SUBJECT(
	subjectId VARCHAR(4) PRIMARY KEY NOT NULL,
    subjectName VARCHAR(45) NOT NULL,
    priority INT(11) NOT NULL
);

create table MARK (
	subjectId varchar(4) not null,
    foreign key(subjectId)references SUBJECT(subjectId),
    studentId varchar(4) not null,
    foreign key(studentId)references STUDENT(studentId),
    point double not null
);

insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S001','Nguyễn Thế Anh','1999-1-11',1,'Hà Nội','984678082');
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S002','Đặng Bảo Trâm','1998-12-22',0,'Lào Cai',904982654);
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S003','Trần Hà Phương','2000-5-5',0,'Nghệ An',947645363);
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S004','Đỗ Tiến Mạnh','1999-3-26',1,'Hà Nội',983665353);
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
 values('S005','phạm duy nhất','1998-10-4',1,'tuyên quang',987242678);
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S006','Mai Văn Thái','2002-6-22',1,'Nam Định',982654268);
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S007','Giang Gia Hân','1996-11-10',0,'Phú Thọ','982364753');
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S008','Nguyễn Ngọc Bảo My','1999-1-22',0,'Hà Nam','927867453');
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S009','Nguyễn Thế Đạt','1998-8-7',1,'Tuyên Quang','989274673');
insert into STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
values('S010','Nguyễn Thiều Quang','2000-9-18',1,'Hà Nội','984378291');


INSERT INTO SUBJECT (subjectId,subjectName,priority) VALUES('MH01','Toán',2);
INSERT INTO SUBJECT (subjectId,subjectName,priority) VALUES('MH02','Vật Lý',2);
INSERT INTO SUBJECT (subjectId,subjectName,priority) VALUES('MH03','Hóa Học',1);
INSERT INTO SUBJECT (subjectId,subjectName,priority) VALUES ('MH04','Ngữ Văn',1);
INSERT INTO SUBJECT (subjectId,subjectName,priority) VALUES ('MH05','Toán',2);
    
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S001',8.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S001',7);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S001',9);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S001',9);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S001',5);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S002',9);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S002',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S002',6.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S002',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S002',6);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S003',7.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S003',6.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S003',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S003',7);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S003',7);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S004',6);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S004',7);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S004',5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S004',6.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S004',8);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S005',5.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S005',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S005',7.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S005',8.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S005',9);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S006',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S006',10);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S006',9);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S006',7.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S006',6.5);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S007',8.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S007',9);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S007',6);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S007',9);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S007',4);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S008',10);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S008',8.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S008',8.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S008',6);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S008',9.5);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S009',7.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S009',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S009',5.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S009',4);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S009',7);
    
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH01','S010',6.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH02','S010',8);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH03','S010',5.5);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH04','S010',4);
INSERT INTO MARK (subjectId, studentId, point) VALUES('MH05','S010',7);


-- 2. Cập nhật dữ liệu [10 điểm]:
-- - Sửa tên sinh viên có mã `S004` thành “Đỗ Đức Mạnh”.
update student
set studentName='Đỗ Đức Mạnh' where studentId='S004';
-- - Sửa tên và hệ số môn học có mã `MH05` thành 'NgoạiNgữ' và hệ số là 1.
UPDATE Subject
SET subjectName = 'Ngoại Ngữ', priority = 1
WHERE subjectId = 'MH05';

-- - Cập nhật lại điểm của học sinh có mã `S009` thành (MH01 : 8.5, MH02 : 7,MH03 : 5.5, MH04 : 6,
-- MH05 : 9).

UPDATE Mark
SET point = CASE 
            WHEN subjectId = 'MH01' THEN 8.5
            WHEN subjectId = 'MH02' THEN 7
            WHEN subjectId = 'MH03' THEN 5.5
            WHEN subjectId = 'MH04' THEN 6
            WHEN subjectId = 'MH05' THEN 9
          END
WHERE studentId = 'S009';

-- 3. Xoá dữ liệu[10 điểm]:
-- - Xoá toàn bộ thông tin của học sinh có mã `S010` bao gồm điểm thi ở bảng MARK và thông tin học sinh
-- này ở bảng STUDENT.
DELETE FROM MARK
WHERE studentId = 'S010';

DELETE FROM STUDENT
WHERE studentId = 'S010';



-- Bài 3: Truy vấn dữ liệu [25 điểm]:
-- 1. Lấy ra tất cả thông tin của sinh viên trong bảng Student . [4 điểm]
SELECT * from student;
-- 2. Hiển thị tên và mã môn học của những môn có hệ số bằng 1. [4 điểm]
SELECT subjectName, subjectId 
FROM subject
WHERE priority = 1;

-- 3. Hiển thị thông tin học sinh bào gồm: mã học sinh, tên học sinh, tuổi (bằng năm hiện tại trừ
-- năm sinh) , giới tính (hiển thị nam hoặc nữ) và quê quán của tất cả học sinh. [4 điểm]
SELECT studentId, studentName, (Year(current_date())-Year(birthday)) as Tuổi, 
       CASE WHEN gender = 1 THEN 'Nam' ELSE 'Nữ' END AS gender, address
FROM STUDENT;

-- 4. Hiển thị thông tin bao gồm: tên học sinh, tên môn học , điểm thi của tất cả học sinh của môn
-- Toán và sắp xếp theo điểm giảm dần. [4 điểm]
select S.studentName, Sb.subjectName, M.point
from mark M
join student S on M.studentId = S.studentId
join subject Sb on M.subjectId = Sb.subjectId
where Sb.subjectName = 'Toán'
order by M.point desc;


-- 5. Thống kê số lượng học sinh theo giới tính ở trong bảng (Gồm 2 cột: giới tính và số lượng).
-- [4 điểm]
SELECT gender, COUNT(*) AS 'SoLuong'
FROM student
GROUP BY gender;

-- 6. Tính tổng điểm và điểm trung bình của các môn học theo từng học sinh (yêu cầu sử dụng hàm
-- để tính toán) , bảng gồm mã học sinh, tên hoc sinh, tổng điểm và điểm trung bình. [5 điểm]
SELECT m.studentId, studentName, SUM(point) AS TongDiem, AVG(point) AS DiemTrungBinh
FROM mark m
JOIN student s ON m.studentId = s.studentId
GROUP BY m.studentId, studentName;


-- Bài 4: Tạo View, Index, Procedure [20 điểm]:
-- 1. Tạo VIEW có tên STUDENT_VIEW lấy thông tin sinh viên bao gồm : mã học sinh, tên học
-- sinh, giới tính , quê quán . [3 điểm]
CREATE VIEW STUDENT_VIEW AS
SELECT studentId, studentName, gender, address
FROM student;

-- 2. Tạo VIEW có tên AVERAGE_MARK_VIEW lấy thông tin gồm:mã học sinh, tên học sinh,
-- điểm trung bình các môn học . [3 điểm]
CREATE VIEW AVERAGE_MARK_VIEW AS
SELECT m.studentId, s.studentName, AVG(m.point) AS DiemTrungBinh
FROM mark m
JOIN student s ON m.studentId = s.studentId
GROUP BY m.studentId, s.studentName;

-- 3. Đánh Index cho trường `phoneNumber` của bảng STUDENT. [2 điểm]
CREATE INDEX idx_phoneNumber ON student(phoneNumber);

-- 4. Tạo các PROCEDURE sau:
-- - Tạo PROC_INSERTSTUDENT dùng để thêm mới 1 học sinh bao gồm tất cả
-- thông tin học sinh đó. [4 điểm]
DELIMITER //
CREATE PROCEDURE PROC_INSERTSTUDENT(
    IN s_studentId VARCHAR(4),
    IN s_studentName VARCHAR(100),
    IN s_birthday DATE,
     IN s_gender BIT(1),
    IN s_address text,
    IN s_phoneNumber VARCHAR(45)
)
BEGIN
    INSERT INTO STUDENT (studentId,studentName,birthday,gender,address,phoneNumber)
    VALUES (s_studentId, s_studentName, s_birthday, s_gender, s_address, s_phoneNumber);
END //
DELIMITER ;


call PROC_INSERTSTUDENT('S012','Nguyễn Thế Anh','1999-1-11',1,'Hà Nội','984678083');
-- - Tạo PROC_UPDATESUBJECT dùng để cập nhật tên môn học theo mã môn học.
-- [4 điểm]


DELIMITER //
CREATE PROCEDURE PROC_UPDATESUBJECT(
    IN sb_subjectId VARCHAR(4),
    IN sb_subjectName VARCHAR(45)
)
BEGIN
    UPDATE subject
    SET subjectName = sb_subjectName
    WHERE subjectId = sb_subjectId;
END //
DELIMITER ;
call PROC_UPDATESUBJECT ('MH05','khoa hoc');
-- - Tạo PROC_DELETEMARK dùng để xoá toàn bộ điểm các môn học theo mã học
-- sinh và trả về số bản ghi đã xóa. [4 điểm]
DELIMITER //
CREATE PROCEDURE PROC_DELETEMARK(
    IN m_studentId VARCHAR(4),
    OUT m_SoBanGhiDaXoa INT
)
BEGIN
    set m_SoBanGhiDaXoa=(select count(*) from mark
    WHERE studentId = m_studentId);
     DELETE FROM mark
    WHERE studentId = m_studentId ;
END //
DELIMITER ;

call PROC_DELETEMARK('S002', @m_SoBanGhiDaXoa);
select @m_SoBanGhiDaXoa;






