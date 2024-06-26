CREATE DATABASE University;

USE University;
CREATE TABLE Khoa (
    MaKH INT PRIMARY KEY,
    TenKH NVARCHAR(100)
);
INSERT INTO Khoa (MaKH, TenKH) VALUES (1, 'Khoa Công Nghệ Thông Tin');
INSERT INTO Khoa (MaKH, TenKH) VALUES (2, 'Khoa Kinh Tế');
CREATE TABLE MonHoc (
    MaMH INT PRIMARY KEY,
    TenMH NVARCHAR(100),
    SoTiet INT
);
INSERT INTO MonHoc (MaMH, TenMH, SoTiet) VALUES (1, 'Lập Trình Cơ Bản', 45);
INSERT INTO MonHoc (MaMH, TenMH, SoTiet) VALUES (2, 'Kinh Tế Vi Mô', 60);
CREATE TABLE SinhVien (
    MaSV INT PRIMARY KEY,
    HoSV NVARCHAR(50),
    TenSV NVARCHAR(50),
    Phai NVARCHAR(10),
    NgaySinh DATE,
    NoiSinh NVARCHAR(100),
    MaKH INT,
    HocBong FLOAT,
    DiemTrungBinh FLOAT,
    FOREIGN KEY (MaKH) REFERENCES Khoa(MaKH)
);
INSERT INTO SinhVien (MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh) 
VALUES (1, 'Nguyen', 'Van A', 'Nam', '2000-01-15', 'Ha Noi', 1, 1000, 8.5);
INSERT INTO SinhVien (MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh) 
VALUES (2, 'Tran', 'Thi B', 'Nu', '2001-03-22', 'TP HCM', 2, 1500, 9.0);
CREATE TABLE Ketqua (
    MaSV INT,
    MaMH INT,
    Diem FLOAT,
    PRIMARY KEY (MaSV, MaMH),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);
INSERT INTO Ketqua (MaSV, MaMH, Diem) VALUES (1, 1, 9.0);
INSERT INTO Ketqua (MaSV, MaMH, Diem) VALUES (1, 2, 8.0);
INSERT INTO Ketqua (MaSV, MaMH, Diem) VALUES (2, 1, 8.5);
INSERT INTO Ketqua (MaSV, MaMH, Diem) VALUES (2, 2, 9.5);
