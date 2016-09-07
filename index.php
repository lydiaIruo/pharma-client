<?php
include('conn.php');
	
?>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pharma_Client</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<header>
<div id="Company_Name"></div>
<span id="datetime"><?php 
$date_date=date('Y/m/d');
					$time= date('h:i:sa');
					echo "Date : ".$date_date;
					echo "<br>";
					echo "<br>";
					echo "Time : ".$time;
?></span>
<span id="only_link"><a href="add_new.php">New Patient?</a></span>

</header>
<article>
<table width="1300" border="0" id="tabled">
  <tr id="heading">
    <td width="46" >S/N</td>
    <td width="157">Name</td> 
    <td width="127">Medical Condition</td>
    <td width="136">Drugs Prescribed</td>
    
	<input name="txtid" type="hidden" value="txtid">
    <td width="91">Email Address</td>
    <td width="120">Phone Number</td>
       <td width="120">Date of next Appointment</td>
    <td width="91">Time of next Appointment</td>
    
  </tr>
  <input name="txtid" type="hidden" value="">
<?php
	$sql = "select id,name,med,drug,email,phone,date_next,time_next from patient";
		$query = mysqli_query($connect,$sql);
		$count = mysqli_num_rows($query);
		for($i=0;$i<$count;$i++){
		$record=mysqli_fetch_array($query);
		$sn = 1 + $i;
		$date_well=new DateTime($record['date_next']);
		$date_well2=$date_well->format('Y-m-d');
		$time_well=new DateTime($record['time_next']);
		$time_well2=$time_well->format('h:i');
		echo '<tr>
		<td>'. $sn .'</td>
		<td>'.$record['name'].'</td>
		<td>'.$record['med'].'</td>
		<td>'.$record['drug'].'</td>
		<td>'.$record['email'].'</td>
		<td>'.$record['phone'].'</td>
		<td>'.$date_well2.'</td>
		<td>'.$time_well2.'</td>
		<td>'."<a href=\"patient_edit.php?id=$record[id]\">Edit Patient Info?</a><br>
				<a href=\"patient_delete.php?id=$record[id]\">Delete Patient Info?</a>".'</td>';
	
		}
		/* this is the part i am having issues
		$date_well=new DateTime($record['date_next']);
		$date_well2=$date_well->format('Y-m-d');
	$date_today=date('Y-m-d');
	echo $date_well2;
	$date_diff= date_diff($date_today , $date_well2) ;
	
	echo $date_today;
	echo 'br';
	echo $date_diff;*/
	?>
</table>
</article>
</body>
</html>