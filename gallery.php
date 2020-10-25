<?php
require 'includes/header.php';
?>

<main>
    <link rel="stylesheet" href="css/gallery.css">
    <section class="gallery-links">
        <div class="wrapper">
            <h1>Villains For Hire</h1>
            <div class="gallery-container">

                <?php

                include_once 'includes/dbhandler.php';
                $sql = 'SELECT * FROM villains ORDER BY upload_date DESC';
                $stmt = mysqli_stmt_init($conn);

                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    echo 'SQL FAILURE';
                } else {
                    mysqli_stmt_execute($stmt);
                    $result = mysqli_stmt_get_result($stmt);

                    while ($row = mysqli_fetch_assoc($result)) {
                        echo '<div class="card">
                            <a href="review.php?id='.$row['pid'].'">
                                <img src="villains/' . $row['picpath'] . '">
                                <h3>' . $row['title'] . '</h3>
                                <p>' . '"' . $row['descript'] .  '"' . '</p>
                            </a>
                        </div>';
                    }
                }
                ?>
            </div>
        </div>
    </section>

    <div class="gallery-upload"></div>
</main>