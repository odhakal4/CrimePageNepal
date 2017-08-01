1. --->CREATE TABLE tblMVC
CREATE TABLE tblMVC (
    id int not null primary key,
    firstName varchar(255),
    lastName varchar(255),
    Age int,
    emailAddress varchar(255) ,
  );

2. -->select all columns of tblMVC
select* from tblMVC;

3.-->Where clause 
select firstName,emailAddress from tblMVC where firstName='Om';

4.--->And OR NOT example
SELECT * FROM tblMVC where age=34 and emailAddress='nepali@gmail.com';//both value should be match to retrieve data
SELECT * FROM tblMVC where age=34 or emailAddress='nepali@gmail.com';//if any value match then display data
SELECT firstName,emailAddress FROM tblMVC
WHERE NOT age=34;


5.--->Alter table colunms
 use mvcDatabase;
alter table tblMVC add dateOfBirth date;

6.--->Insert data into tblMVC
use mvcDatabase;
insert into dbo.tblMVC(firstName,lastName,age,emailAddress) values
('sudeep','Nepal',34,'nepali@gmail.com'),
('Alina','Dhakal',34,'anisha@gmail.com'),
('Mahesh','khanal',34,'mahesh@gmail.com'),
('Prabesh','Pathak',34,'prabesh@gmail.com'),
('prakash','dhakal',34,'prakash.dhakal@gmail.com'),
('ranjeet','Gurung',34,'ranjeet@gmail.com'),
('binod','dhakal',23,'binod@gmail.com');

7.--->Distinct(different) data(if we have different data) example===>may be we have duplicate data 

select distinct firstName,emailAddress from tblMVC;
8. --->And or combination
use mvcDatabase;
select firstName,lastName,emailAddress from tblMVC where firstName='Ram' and age=33;

9. --->order by desc,asc example
select firstName, age,emailAddress from tblMVC order by age desc;
select firstName, age,emailAddress from tblMVC order by firstName asc,age desc;

10. ---->test null values or not
SELECT firstName
FROM tblMVC
WHERE emailAddress IS not NULL;


11.----->Update table columns
update tblMVC
set firstName='OmPrakash',emailAddress='omprakashdhakal@gmail.com' where age=25;

12.---->delete table columns

delete from tblMVC where age=34;

13.---->top example
SELECT TOP 3 * FROM tblMVC;-->gives top 3 tables

14.--->MIN,MAX value finding
select MAX(age) as AGE from tblMVC;
select MIN(age) as AGE from tblMVC;


15.--->The SQL COUNT(), AVG() and SUM() Functions
select count(age) as AGE from tblMVC where age=34;
select avg(age) as AGE from tblMVC;
select sum(age) as Total from tblMVC;

16.---->like Operator(% - The percent sign represents zero, one, or multiple characters and The underscore represents a single character)
select * from tblMVC where firstName like 'p%';
select * from tblMVC where firstName like '%esh%';
select * from tblMVC where firstName like 'a_%_%';-->Finds any values that starts with "a" and are at least 3 characters in length
select * from tblMVC where firstName like 'a%a';-->find firstName which start with a and end with a
select * from tblMVC where firstName like '[abcd]%';--->find any firstName which start with a or b or c or d.
select * from tblMVC where firstName like '[e-p]%';-->find any firstName which start from e to p

17.The IN operator allows you to specify multiple values in a WHERE clause.
select * from tblMVC where age in(24,25);-->retrieve all table data who's age is 24 and 25

18. --->Use alises
use mvcDatabase;
select firstName as FName,lastName as LName from tblMVC;
select firstName+', '+lastName as Name from tblMVC;

19.--->count email address that which ageGroup has how many email address(GROUP BY)
use mvcDatabase;
select count(emailAddress) as TotalemailAddressFound,age as totalAgeGroup from tblMVC group by age;
use mvcDatabase;
select count(emailAddress) as TotalemailAddressFound,age as totalAgeGroup from tblMVC group by age order by count(age) desc;

20.--->Having clause 
select count(emailAddress) as TotalemailAddressFound,age as totalAgeGroup from tblMVC group by age having count(age)>2;

23.Practice kudvankat
Create Table Departments
(
     DepartmentID int primary key,
     DepartmentName nvarchar(50)
)
GO

Create Table Employees
(
     EmployeeID int primary key,
     EmployeeName nvarchar(50),
     DepartmentID int foreign key references Departments(DepartmentID)
)
GO

Insert into Departments values (1, 'IT')
Insert into Departments values (2, 'HR')
Insert into Departments values (3, 'Payroll')
Insert into Departments values (4, 'Admin')
GO

Insert into Employees values (1, 'Mark', 1)
Insert into Employees values (2, 'John', 1)
Insert into Employees values (3, 'Mike', 1)
Insert into Employees values (4, 'Mary', 2)
Insert into Employees values (5, 'Stacy', 3)
Insert into Employees values (6, 'Pam', NULL)
GO

select * from Departments;
select * from Employees;
select EmployeeName,DepartmentName from Employees
Left join Departments
on Employees.DepartmentID=Departments.DepartmentID;

Cluster and non Clusters index-------------->
Primary key creates index
Cluster INdex---->primary key,it automatically crete cluster index.
Non-Clusters----->
Each table create index
Cluster index in multiple columns in one table.

sp_helpIndex--------shows clustered and non clustered

Non-Cluter index


If you define Clustered index only one index can be define. No more than one define index.
create nonclustered index 

non clustered table is just for reference. we write in different place where we define non clustered table. and it points to the particualr table.
create clustered index


	Normalizatioin::

    Denormalization::


    
    name,streetaddress andcity employee work in wellsfrago and salary >10,000

select companyName from works inner join works on
(select min(payroll) from works where group by salary)  

MVC architecture
routing
view
how does bundle config work?
design patterns?
singleton design pattern?
factory design pattern?
Repository pattern and unit of work?
partial classes
how web form is used? in partial calsses and parital method
achronysis progrmming?
linq vs store procedure
EagerLoading vs LasyLoading??Pros and cons of these two?
dependency injection----design Patterns
******************************************************************
static and non static
9139960720----saving 
9139960717---checking

We have a dedicated team that can answer your questions about your Checking/Savings Account.
 Please call us on 1-800-374-9700, TDD/TTY: 1-800-325-2865 we are available all day, 7 days a week.
  You are currently chatting with Citicards Customer Support.


  http://www.w3resource.com/csharp-exercises/linq/index.php Linq Practice
  ------->>>>>>>>left outer join and full outer join
  http://www.c-sharpcorner.com/UploadFile/ff2f08/sql-join-in-linq-linq-to-entity-linq-to-sql/
  https://www.youtube.com/channel/UCYkmh6m-YkK226DSCtw7fBQ

  <connection String>
metadata=res://*/Models.mvcTestModel.csdl|res://*/Models.mvcTestModel.ssdl|res://*/Models.mvcTestModel.msl;provider=System.Data.SqlClient;provider connection string="data source=DESKTOP-35ARHIC\SQLEXPRESS;initial catalog=Nepal;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework"
  asynchronous programming---async and await
  Synchronous programming

CSRF----cookie token
xsrf
Identity---->
CSRF---Token
Using the AntiForgeryToken helpers
The core ASP.NET MVC package includes a set of helpers
 that give you a means to detect and block CSRF using the “user-specific tokens” technique.
 HTML.AntiForgeryToken() give the visitor cookie called _RequestVerificationToken.
 To validate-----[ValidateAntiFrogeryToken]
 ****The incoming cookie is called  _RequestVerificationToken
 ****The incoming request has a Request.Form entry called _RequestVerificationToken.
 ****Cookies and Request.Form values match.

 Limitations of AntiForgeryHelpers:
 1.you probably don’t have anything to protect anyway.
 2.It only works with POST requests, not GET requests. 
 3.It’s easily bypassed if you have any XSS holes on your domain.


 /*********************AngularJS***********************/
 http://revillweb.github.io/angularjs-by-example/

Microsoft Docs Link::
 https://docs.microsoft.com/en-us/aspnet/core/mvc/overview


 Resume:
 https://www.indeed.com/r/ea7b4d99cc8c16c3
 https://www.hireitpeople.com/resume-database/63-net-developers-architects-resumes/3333-sr-dot-net-developer-resume-dc
 https://www.indeed.com/r/10380f7c1548a6aa
 https://tranzport.com/product/
 http://www.dayspring-tech.com/capabilities/web/web-application-development/
 http://www.techgroup.net/erp-software-miami
 https://www.indeed.com/viewjob?jk=206475171c6e3a36&tk=1bks2oti35n8v8au&from=company
 https://www.ezofficeinventory.com/demos
 https://www.ezofficeinventory.com/demos
 https://youtu.be/Z1ccyPmLHj8
 
 https://www.indeed.com/r/b9df4335e016ad94


 1. 2012 march-
 2. 
 3.
 4.
 (559) 856-1102
 http://devicehelp.boostmobile.com/scenario/Realm/Boost_Mobile/en/Set_Up_and_Access_Visual_Voicemail

 http://www.godatafeed.com/platforms/3dcart