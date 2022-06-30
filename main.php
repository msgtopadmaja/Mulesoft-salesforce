
<?php
$user = 'root';
$password = '';

$database = 'movie';

$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,$password, $database);

if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

$sql = " SELECT * FROM movie_name ";
$result = $mysqli->query($sql);
$mysqli->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>GFG User Details</title>
	<style>
		table {
			margin: 0 auto;
			font-size: large;
			border: 1px solid black;
		}

		h1 {
			text-align: center;
			color: #006600;
			font-size: xx-large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
		}

		td {
			background-color: #E4F5D4;
			border: 1px solid black;
		}

		th,
		td {
			font-weight: bold;
			border: 1px solid black;
			padding: 10px;
			text-align: center;
		}

		td {
			font-weight: lighter;
		}
	</style>
</head>

<body>
	<section>
		<h1>Movies With Details</h1>
		<table>
			<tr>
				<th>Id</th>
				<th>movie</th>
				<th>Actor</th>
				<th>Actress</th>
				<th>Year of Release</th>
				<th>Director</th>
			</tr>
			<?php
				while($rows=$result->fetch_assoc())
				{
			?>
			<tr>
				<td><?php echo $rows['id'];?></td>
				<td><?php echo $rows['movie'];?></td>
				<td><?php echo $rows['actor'];?></td>
				<td><?php echo $rows['actress'];?></td>
				<td><?php echo $rows['year_of_release'];?></td>
				<td><?php echo $rows['director'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
	</section>
</body>
</html>
