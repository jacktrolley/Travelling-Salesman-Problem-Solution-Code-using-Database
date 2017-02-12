<?php
session_start();
?>

<?php

$count = $_SESSION['num_of_vertices'];
$selected_table = $_SESSION['selected_table'];

for($i=0;$i<$count;$i++)
{
$tmp = 'vertex_'.$i;          // this is html name for input type.
$vertex[$i] = trim($_POST[$tmp]);   // $_POST[$tmp] will give the value ie:- the name of the vertex.

$input_pattern='/^[a-zA-Z]{1}[a-zA-Z0-9]*$/';
$input_count = preg_match_all($input_pattern,trim($_POST[$tmp]));
if($input_count == 0)
{
echo "<br/>STOPPING SCRIPT DUE TO ERROR IN SOME INPUT VALUES. FIRST CHARACTER OF VERTEX NAME SHOULD BE AN ENGLISH ALPHABET. OTHER CHARCTERS INCLUDED IN VERTEX NAME SHOULD ONLY CONTAIN A COMBINATION OF ENGLISH ALPHABETS OR POSITIVE INTEGER NUMBERS OR A COMBINATION OF ENGLISH ALPHABETS AND POSITIVE INTEGER NUMBERS.<br/>";
echo "<br/>PLEASE GO BACK TO PREVIOUS PAGE AND TYPE IN CORRECT VALUES.<br/>";
exit();
}




}

$_SESSION['array_of_vertices'] = $vertex;   // this stores the array of vertices into the session variable.

?>


<html>

<head>
</head>



<body>

<form name='form_3' method='post' action = 'tsp_4_db.php'>
<br/>
PLEASE ENTER THE WEIGHTS OF THE EDGES OF THE GRAPH:


<br/>
<br/>


( For eg:- if the weight of edge 'a,b' (ie:- the edge connecting vertex 'a' and vertex 'b') has a value of 100 , then type 100 in the input box adjacent to the label written as 'Weight of [ a , b ]'. Do the same (ie:- type in the values) for all the remaining edges. )

<br/>
<br/>

IMPORTANT NOTE:- Only positive integer numbers are to be typed in for the weight values. No weights should have a value of 0.

<br/>
<br/>

PLEASE NOTE :- If for eg:- w[a,b] is typed in with a value of 100, but w[b,a] is typed in with a value of 30, then note here that there is an error in typing the values because w[a,b] should be equal to w[b,a] in the values of their respective weights. Now suppose that due to this error in typing , the values of w[a,b] and w[b,a] are given different values, the program will still execute with these wrong values and a wrong answer for the total weight of the hamilton circuit will be given as output. So please check as far as possible for errors in typing values before pressing the 'Submit' Button on this page.

<br/>
<br/>


<table border=1>

<?php

$servername = 'localhost';
$username='root';
$password='';
$dbname='tsp_data_for_program_database';

$connection = mysqli_connect($servername,$username,$password,$dbname) or die('Could not connect to server or get database');


for($i=0;$i<$count;$i++)
{
?>

<tr>

<td>
&nbsp;&nbsp; Weight of Edges for Vertex &nbsp;&nbsp;<?php echo $vertex[$i] ?>&nbsp;&nbsp;
</td>

<td>
<table>
<?php

//for($j=0;$j<$count;$j++)
//{

$j=0;

$query = "select "."$vertex[$i]"." from " ."$selected_table";
//echo $query;
$result = mysqli_query($connection,$query);


while(($row = mysqli_fetch_array($result)) and ($j<$count))
{
//echo $row[$vertex[$i]];

//if($row[$vertex[$i]] == 0)
//{
//$j++;
//continue;
//}

if($i!=$j)
{
$edge = " ".$vertex[$i]." , ".$vertex[$j]." ";
?>


<tr>
<td>
&nbsp;&nbsp;Weight of [<?php echo $edge; ?>]&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;
<input type="text" name="weight_<?php echo $vertex[$i]; ?>_<?php echo $vertex[$j]; ?>" value="<?php echo $row[$vertex[$i]]; ?>" />
&nbsp;&nbsp;
</td>
</tr>

<?php

}

$j++;
}
?>
</table>
</td>

<?php

}
mysqli_close($connection);
?>

</table>
<br>
<input type="submit" name="button_3" value="Submit" />

</form>


</body>


</html>



<?php


?>