/* Connor McClaran 
   CS3810
   HW9 

In an attempt to gain extra credit, and display my knowledge of SQL implementation
I have implemented SQL in SAS

SAS is language for data analytics and is used in  many applications.

*/

*Create a database of employees and threre family memebers on a compay insurance plan.

;
LIBNAME 	homework  'C:\SAS\HW9';
FILENAME	HW9 	  'C:\SAS\HW9';


Title 'EMPLOYEE DATABASE';
data families;
	infile HW11(benefits.txt);
	input name$ family$ gender$ age;

proc sql;
ALTER TABLE families
	add status char format 10.;

UPDATE families
	SET status = 
		case when family = "EMPCODEz" then "Employee"
		when family = "EMPCODEx" then "Employee"
		else "Dependent"
	END;

UPDATE families
	SET name =
		case when status = "Employee" then name
		else ""
	END;

UPDATE families
	SET family =
		case when status = "Employee" then ""
		else family
	END;
QUIT;

proc print data = families;
	var name family status gender age;
run;


/* Create table of spending at business and then Total it
*/

Title'SPENDING TABLE';

data totals_temp;
	infile HW9(spending.txt) EXPANDTABS;
	input lname$ amount;
run;

proc sql;
CREATE table totals as
	SELECT lname, sum(amount) as totals
	FROM totals_temp
	group by lname;
quit;

proc print data = totals;
run;

