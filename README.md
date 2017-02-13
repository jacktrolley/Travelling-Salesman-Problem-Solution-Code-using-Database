# Travelling-Salesman-Problem-Solution-Code-using-Database
This Php program finds the 'polynomial time' solution to the Travelling Salesman Problem for a 'Complete' graph using a database, so that data does not have to be typed in always. 

Please Note : If for an example graph, if there is no edge between two vertices, then assign a weight to the imaginary edge connecting the two vertices. The weight can be equal to the sum of the weights of all the real edges present in the example  graph. This imaginary edge with a weight is necessary because of the condition that this program works on 'Complete' graphs only.  A 'Complete' graph is the exactly the same mathematical object used in Graph Theory. Also please note that no edge in the example graph should have a weight of 0.


I have uploaded the text file "TSP_Latest_M5_2016.txt".  The file describes the method and the algorithm for the program. The algorithm is a simple algorithm.  For an easier understanding of the algorithm , the algorithm has been explained in terms of the example given in the 'TSP_Latest_M5_2016.txt' document.  The file 'TSP_Latest_M5_2016.txt' consists of 3 sections. The 3 sections are as follows :- 
a) 'NOTATION SECTION' 
b) 'ALGORITHM SECTION' 
c) 'EXAMPLE SECTION'
 

To work with PHP files , 'XAMPP' Web Server has to be installed in the Computer. 'XAMPP' Web Server is available on the internet.  When running XAMPP Web Server for the program , I highly recommend that you are not connected to the internet , because eventhough my knowledge in network security is very limited, I feel that due to 'XAMPP' itself being a Web Server and so when XAMPP is running and if the computer is connected to the internet, other insecure connections can become connected to your computer. This is what I think is occuring eventhough my knowledge in this area is very limited. So as far as possible, once you have fully installed XAMPP , and before you start to run XAMPP, it is better to disconnect your computer from the internet. After you have finished running the php program, and you have stopped Apache and Mysql from the XAMPP control panel , and when you have quit XAMPP completely, then you can reconnect your computer to the internet.

I am getting all the correct answers for all the travelling salesman problem examples given in two important textbooks which contain sections describing the Travelling Salesman Problem. The two textbooks are as follows :-
1) "Elements of Discrete Mathematics " by C.L.Liu ( Second Edition ) (ISBN : 0-07-100544-7).
2) "A First Look at Graph Theory" by John Clark and Derek Allan Holton (ISBN : 81-7023-463-8 ).

Search for 'tsp data for the Travelling Salesman Problem' in Google and the first result link that comes will give a site which contains a collection of travelling salesman problem datasets maintained by 'Gerhard Reinelt'. The website contains bigger data problems which can be used as input data when running this program.


IMPORTANT DETAILS ABOUT DATABASE PROGRAM


	In this program , a 'Mysql' database is used , so that input need not always be typed when executing the program.  There are four php files which contain the php code for executing the program with a database. 'tsp_1_db.php' , 'tsp_2_db.php' , 'tsp_3_db.php' and 'tsp_4_db.php' are the four php files.  The order of execution of the php files is 'tsp_1_db.php' , 'tsp_2_db.php' , 'tsp_3_db.php' and then 'tsp_4_db.php'.  The execution need only to be started from 'tsp_1_db.php'.

	The 'XAMPP' Web Server is used for executing the php files and for processing the table data present in the database.  All the four 'php' files ( ie:- 'tsp_1_db.php' , 'tsp_2_db.php' , 'tsp_3_db.php' and 'tsp_4_db.php' )can be put in 'C:\xampp\htdocs' folder. The execution need only to be started from 'tsp_1_db.php'.

	"tsp_data_for_program_database_db.sql" is the sql file for importing the "tsp_data_for_program_database" database into the mysql database. This file has to be imported into the Mysql database ( The 'PHPMyAdmin' database interface already present in 'XAMPP' Web Server can be used for importing the database file ), otherwise the database php files will not work , since the "tsp_data_for_program_database" database should be present in the main database. All the tables needed for storing the data of the graphs should be present in the "tsp_data_for_program_database" database.

	An example of a table given in the database of "tsp_data_for_program_database" is as follows. A table 'vertex_7' is already present as an example of data of a seven vertex graph in the "tsp_data_for_program_database" database. For running the example of a 'seven' vertex graph, the 'vertex_7' can be selected from the drop down list of the tables , when the file 'tsp_1_db.php' is executed.
		
	Some important properties of the program are given below.

1) The program is designed to solve for any number of vertices for the Travelling Salesman Problem for Complete graphs.

2) The number of vertices to be entered in the program can only be a positive integer which is equal to or greater than 4.

3) When a 33 vertex graph or a graph containing more than 33 vertices are given for processing to the program, errors showing 'undefined weights' and 'input values of 1000 exceeded' are given as output. This is because the default value of the constant 'max_input_vars' in php is 1000.
 
	In a 33 vertex graph, there are 1056 edges ( ie:- 33*32 = 1056 , since there are 33 vertices in the graph and there are 32 edges attached to each vertex ) or 1056 input values. 1056 is greater than 1000 and so the program will output an error since the number of input values exceed 1000.

	For eg:- if a 50 vertex graph is to be processed, then there are 2450 edges  ( ie:- 50*49 = 2450 , since there are 50 vertices in the graph and there are 49 edges attached to each vertex ) or 2450 input values. So 'max_input_vars' can be given a value higher than 2450 for eg:- 3000.  So the 'max_input_vars' constant in php can be changed by uncommenting the line 'max_input_vars=1000' and giving a value of 'max_input_vars=3000' to the 'max_input_vars' constant.  

	The 'max_input_vars' constant can be found in 'php.ini' file which is present in 'c:/xampp/php' folder.

	To verify if 'max_input_vars' has the required value, the function 'phpinfo()' can be typed in any empty php file and the file executed. This information displayed after execution of the 'phpinfo()' function will contain the value of 'max_input_vars' along with other information that the function will display.

4) Vertex names should begin with an english alphabet. The rest of the name should contain a combination of english alphabets or positive integer numbers or a combination of both english alphabets and positive integer numbers only. No other type of characters are allowed to be used in the vertex name.

5) Each vertex name should be different from every other vertex name. No two or more vertices should have the same name.

6) Only positive integers should be used for the weight values of the edges.

7) No edge should have a weight with a value of 0.

8) In tsp_4.php , in line no 3 and line no 4, the following code is given. The code is as follows :-

ini_set('memory_limit', '1024M');     
ini_set('max_execution_time', 10800);

	The above code will become necessary when the number of vertices increases. This code is for increasing the processing memory and for increasing the execution time limit. If this code is not there, then sometimes php will stop program execution with error messages.  For eg:- if the processing time exceeds 30 seconds, then php will automatically stop execution after 30 seconds, since 30 seconds is the default value given in php. To prevent this, the code 'ini_set('max_execution_time', 10800);' is given.

9) Also for the code '<?php session_start(); ?>', ( present at the very beginning of a php file ) please note that there should not be a space or even an empty line above this code if any code modification is made in the php file. Even if there is a single space before this line of code, the error of 'header output already sent' is most likely to be shown. So please make sure that this code (ie:- the code included between the apostrophies ie:- '<?php session_start(); ?>') is present at the very beginning of the code file, without even a single space preceeding this line of code.

