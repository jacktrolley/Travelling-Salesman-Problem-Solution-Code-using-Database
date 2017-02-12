<?php
session_start();
?>

<?php
$servername = 'localhost';
$username='root';
$password = '';
$dbname = '';
?>


<html>

<head>
</head>



<body>

<form name='form_1' method='post' action = 'tsp_2_db.php'>

PLEASE INPUT THE NUMBER OF VERTICES IN THE GRAPH: 

<br/><br/>
( For eg:- if there are 5 vertices in a graph , then please type 5 in the input box given below and press 'Submit' button ).
<br/><br/>

VERY IMPORTANT :- AS EACH FORM IS PROCESSED AND IF SOME PHP COMPILER ERROR MESSAGES ARE SHOWN WHICH IS NOT EASILY UNDERSTOOD, THEN IT IS BETTER TO START THE PROGRAM AGAIN AFRESH AS FROM THIS PAGE RATHER THAN PRESSING THE BACK BUTTON ON THE BROWSER USING THE SAME DATA AGAIN, WHERE THE OLD DATA MIGHT NOT BE CORRECT DATA.  THIS PROGRAM IS DESIGNED FOR PROCESSING ANY NUMBER OF VERTICES OF THE TRAVELLING SALESMAN PROBLEM FOR COMPLETE GRAPHS.  

<br/><br/>

No of vertices :

<input type='text' name='no_of_vertices' value="" />

<br/><br/>

Please select the table :
<select name='selected_table'>
<option value="please_select" selected="selected">PLEASE SELECT TABLE</option>

<?php 

$servername = 'localhost';
$username='root';
$password='';
$dbname='tsp_data_for_program_database';

$connection = mysqli_connect($servername,$username,$password,$dbname) or die('Could not connect to server or get database');
$query = "select distinct table_name from information_schema.columns where table_schema='tsp_data_for_program_database'";
$result = mysqli_query($connection,$query);

while($row = mysqli_fetch_array($result))
{

?>

<option value='<?php echo $row['table_name']; ?>'><?php echo $row['table_name']; ?></option>

<?php 
}
mysqli_close($connection);
?>

</select>

<br/><br/>

<input type="submit" name="button_1" value="Submit";/>
</form>


</body>


</html>



<?php


?>