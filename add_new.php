<?php
require_once("my_class.php");
	$retrieve = new PATIENT;
	$status1 = '';
	$message = '';
		if (isset($_POST['submit'])){
		if (isset($_POST['txtname']) )
			{
				$name = addslashes($_POST['txtname']) ;
				$med = addslashes($_POST['txtmed'] );
				$drug = addslashes($_POST['txtdrug'] );
				$email = addslashes($_POST['txtemail']) ;
				$phone = addslashes($_POST['txtphone']) ;
				$date=$_POST["date"];
				$month=$_POST["month"];
				$year=$_POST["year"];
				
				$date_next=date($year.'/'.$month.'/'.$date);
				
				$hour=$_POST["hour"];
				$minute=$_POST["minute"];
				$second='00';
	$time_next=($_POST["hour"].':'.$_POST["minute"].':'.$second);
			$status1=$retrieve->newPatient($name,$med,$drug,$email,$phone,$date_next,$time_next);
			
		if ($status1){
			$message= "Patient Information has been stored successfully";	
			
		}
		else{
			$message= "Error storing information,Patient name exists";	
			
			}
			}}
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
$date_date=date('d/m/Y');
					$time= date('h:i:sa');
					echo "Date : ".$date_date;
					echo "<br>";
					echo "<br>";
					echo "Time : ".$time;
?></span>
<span id="only_link"><a href="add_new.php">New Patient?</a></span>

</header>
<article>

<fieldset id="field">

  <form action="" method="post" >
  <table width="1000" border="0">
    <tr>
      <td></td>
      <td></td>
      <td><?php echo $message; ?></td>
    </tr>
    <tr>
      <td width="28">&nbsp;</td>
      <td width="115">Name</td>
      <td width="250"><input type="text" name="txtname" id="txtname" required /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Medical Condition</td>
      <td><input type="text" name="txtmed" id="txtmed" required/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Drugs Prescribed</td>
      <td><input type="text" name="txtdrug" id="txtdrug" required/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="3">&nbsp;</td>
      <td>Email</td>
      <td>
        <input type="email" name="txtemail" id="txtemail" required/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input type="text" name="txtphone" id="txtphone" required/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Date of next appointment</td>
      <td><select name="date" id="date">
      <option value="1">1</option>	<option value="2">2</option>	<option value="3">3</option>
      <option value="4">4</option>	<option value="5">5</option>	<option value="6">6</option>
      <option value="7">7</option>	<option value="8">8</option>	<option value="9">9</option>
      <option value="10">10</option>	<option value="11">11</option>	<option value="12">12</option>
      <option value="13">13</option>	<option value="14">14</option>	<option value="15">15</option>
      <option value="16">16</option>	<option value="17">17</option>	<option value="18">18</option>
      <option value="19">19</option>	<option value="20">20</option>	<option value="21">21</option>
      <option value="22">22</option>	<option value="23">23</option>	<option value="24">24</option>
      <option value="25">25</option>	<option value="26">26</option>	<option value="27">27</option>
      <option value="28">28</option>	<option value="29">29</option>	<option value="30">30</option> <option value="31">31</option></select>
      
      <select name="month" id="month">
      <option value="01">January</option>	<option value="02">February</option>	<option value="03">March</option>
      <option value="04">April</option>	<option value="05">May</option>	<option value="06">June</option>
      <option value="07">July</option>	<option value="08">August</option>	<option value="09">September</option>
      <option value="10">October</option>	<option value="11">November</option>	<option value="12">December</option> </select>
      
      <select name="year" id="year">
      <option value="2016">2016</option>	<option value="2017">2017</option>	<option value="2018">2018</option>	<option value="2019">2019</option>
      </select>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Time of next appointment</td>
      <td>Hour: <select name="hour" id="hour">
      
      <option value="8">8am</option>	<option value="9">9am</option>	<option value="10">10am</option>
      <option value="11">11am</option>	<option value="12">12pm</option>	<option value="13">1pm</option>
      <option value="14">2pm</option>	<option value="15">3pm</option>	<option value="16">4pm</option>
      <option value="17">5pm</option>		</select>
      
      Minute: <select name="minute" id="minute">
      <option value="00">00</option>	<option value="01">01</option>	<option value="02">02</option>	<option value="03">03</option>
      <option value="04">04</option>	<option value="05">05</option>	<option value="06">06</option>	<option value="07">07</option>
      <option value="08">08</option>	<option value="09">09</option>	<option value="10">10</option>	<option value="11">11</option>
      <option value="12"> 12</option>	<option value="13">13</option>	<option value="14">14</option>	<option value="15">15</option>
      <option value="16">16</option>	<option value="17">17</option>		<option value="18">18</option>
      <option value="19">19</option>	<option value="20">20</option>	<option value="21">21</option>	<option value="22">22</option>
      <option value="23">23</option>	<option value="24">24</option>	<option value="25">25</option>	<option value="26"> 26</option>
      <option value="27">27</option>	<option value="28">28</option>	<option value="29">29</option>	<option value="30">30</option>
      <option value="31">31</option>	<option value="32">32</option>	<option value="33">33</option>	<option value="34">34</option>
      <option value="35">35</option>	<option value="36">36</option>	<option value="37">37</option>	<option value="38">38</option>
      <option value="39">39</option>	<option value="40">40</option>	<option value="41">41</option>	<option value="42">42</option>
      <option value="43">43</option>	<option value="44">44</option>	<option value="45">45</option>	<option value="46">46</option>
      <option value="47">47</option>	<option value="48">48</option>	<option value="49">49</option>	<option value="50">50</option>
      <option value="51">51</option>	<option value="52">52</option>	<option value="53">53</option>	<option value="54">54</option>
      <option value="55">55</option>	<option value="56">56</option>	<option value="57">57</option>	<option value="58">58</option>
      <option value="00">59</option>	      </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
      <td><input type="submit" name="submit" id="submit" value="Add" /></td>
    </tr>
   
  </table>
  </form>
</fieldset></article>
</body>
</html>