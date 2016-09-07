<?php 
class PATIENT{
				
		function __constructor(){
			
		}
		
public function newPatient($name,$med,$drug,$email,$phone,$date_next,$time_next){
	include('conn.php');
	$sql = "select * from patient where name='$name'";
			$query = mysqli_query($connect,$sql);
			$count = mysqli_num_rows($query);
			if($count > 0){
				
			}else{
	$sql_2= "insert into patient(name,med,drug,email,phone,date_next,time_next) 
			values ('$name','$med','$drug','$email','$phone','$date_next','$time_next')";
	$query_2=mysqli_query($connect,$sql_2);
	return $query_2;
			}
}

public function displayPatient(){
			include('conn.php');
			$sql = "select * from patientinfo";
			$query = mysqli_query($connect,$sql);
			return $query;
		}
		public function checkDate($date_next){
			include('conn.php');
			$current_date=date(Y/m/d);
			if (date_diff($current_date,$date_next)==2){
				echo "2 days remaining";	
			}
			
		}

}
?>