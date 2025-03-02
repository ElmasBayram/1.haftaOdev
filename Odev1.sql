SELECT *FROM departments;
SELECT *FROM employees;

--a. Belirli Kolonları Seçme 
--Select ile istenilen stunlari cekiyoruz
SELECT FirstName, LastName, Salary
FROM employees;

--b.  DISTINCT Komutu ile Tekrarları Önleme 
--Tekrarinin onlenmesini istedigimiz sutun isimlerini distinct ile belirtiyoruz.
SELECT DISTINCT DepartmentID,DepartmentName 
FROM departments;

--c. Belirli Bir Departmana Ait Çalışanları Listeleme 
--JOIN ile 2 tablodaki ortak satirlari birlestirdim, ve departName=IT olanlari secip yazdirdim.
SELECT *
FROM employees 
JOIN Departments ON Employees.Departmentid = Departments.Departmentid
WHERE departments.departmentName = 'IT';

--d. Maaşa Göre Sıralama 
-- maas bilgilerini büyükten küçüğe sıralamak icin decs komutunu kullandim.
SELECT Salary
FROM employees
ORDER BY Salary desc;

--e. Kolonları Birleştirme
--Bu gorev icin ALIAS kullandim, butun kolon isimlerini ekleyip, ekstra olarak birlestirmek istedigim kolonlari birlestirip ekstra bir kolon elde ettim.
SELECT FirstName,LastName,Age,DepartmentID,Salary, JoinDate,
      FirstName ||' '|| LastName as fullName
FROM employees;
