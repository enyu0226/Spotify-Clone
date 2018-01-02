<?php 
include("includes/includedFiles.php"); 
?>

<h1 class="pageHeadingBig">Choose Genre</h1>

<div class="gridViewContainer">

	<?php
	// Implement genre search
		$albumGenresQuery = mysqli_query($con, "SELECT `albums`.`id`, `albums`.`artworkPath`, `genres`.`name` FROM `genres`
			INNER JOIN `albums` ON `albums`.`genre` = `genres`.`id` ORDER BY `genres`.`name` ASC");

		while($row = mysqli_fetch_array($albumGenresQuery)) {
			

			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")'>
						<img src='" . $row['artworkPath'] . "'>

						<div class='gridViewInfo'>"
							. $row['name'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>