<?php 
include("includes/includedFiles.php"); 
?>

<h1 class="pageHeadingBig">Choose Song</h1>

<div class="gridViewContainer">

	<?php
	// Implement genre search
		$albumSongsQuery = mysqli_query($con, "SELECT `Songs`.`id`,`Songs`.`title`, `albums`.`artworkPath` FROM `albums` INNER JOIN `Songs` ON `Songs`.`album` = `albums`.`id` ORDER BY `Songs`.`title` ASC");

		while($row = mysqli_fetch_array($albumSongsQuery)) {
			

			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")'>
						<img src='" . $row['artworkPath'] . "'>

						<div class='gridViewInfo'>"
							. $row['title'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>