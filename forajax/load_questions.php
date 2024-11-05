<?php
session_start();
include "../connection.php";

$question_no = "";
$question = "";
$opt1 = "";
$opt2 = "";
$opt3 = "";
$opt4 = "";
$answer = "";
$count = 0;
$ans = "";


$queno = $_GET["questionno"];

if (isset($_SESSION["answer"][$queno])) {
    $ans = $_SESSION["answer"][$queno];
}

$res = mysqli_query($link, "select * from questions where category='$_SESSION[exam_category]' && question_no=$_GET[questionno]");
$count = mysqli_num_rows($res);


if ($count == 0) {
    echo "over";
} else {
    while ($row = mysqli_fetch_array($res)) {
        $question_no = $row["question_no"];
        $question = $row["question"];
        $opt1 = $row["opt1"];
        $opt2 = $row["opt2"];
        $opt3 = $row["opt3"];
        $opt4 = $row["opt4"];
    }
    ?>

    <br>


    <table>
        <tr>
            <td style="font-weight: bold; font-size: 18px; padding-left: 5px" colspan="2">

                <?php echo "( " . $question_no . " ) " . $question; ?>

            </td>
        </tr>
    </table>


    <table style="margin-left: 10px">
        <tr style="padding: 0 !important; display: inline;">
            <td>
                <input type="radio" style="position: absolute; left: -9999px;" name="r1" id="sad" value="<?php echo $opt1; ?>" onclick="radioclick(this.value,<?php echo $question_no ?>)"
                <?php
                if ($ans == $opt1) {
                    echo "checked";
                }
                ?>>
            <label for="sad">
                <?php
                if (strpos($opt1, 'images/') != false) {
                    ?>
                    <img src="admin/<?php echo $opt1; ?>" height="300" width="250" style="padding: 8px 20px; border:2px dotted #6D7AD2; border-radius:6px;">
                    <?php
                } else {
                    echo $opt1;
                }
                ?>
            </label>
            </td>
        </tr>

        <tr style="padding: 0 !important; display: inline;">
            <td>
                <input type="radio" style="position: absolute; left: -9999px;" name="r1" id="happy" value="<?php echo $opt2; ?>" onclick="radioclick(this.value,<?php echo $question_no ?>)"
                <?php
                if ($ans == $opt2) {
                    echo "checked";
                }
                ?>>
            
            <label for="happy">
                <?php
                if (strpos($opt2, 'images/') != false) {
                    ?>
                    <img src="admin/<?php echo $opt2; ?>" height="300" width="250" style="padding: 8px 20px; border:2px dotted #6D7AD2; border-radius:6px;">
                    <?php
                } else {
                    echo $opt2;
                }
                ?>
            </label>
            </td>
        </tr>

        <tr style="padding: 0 !important; display: inline;">
            <td>
                <input type="radio" style="position: absolute; left: -9999px;" name="r1" id="mooon" value="<?php echo $opt3; ?>" onclick="radioclick(this.value,<?php echo $question_no ?>)"
                <?php
                if ($ans == $opt3) {
                    echo "checked";
                }
                ?>>
           <label for="mooon">
                <?php
                if (strpos($opt3, 'images/') != false) {
                    ?>
                    <img src="admin/<?php echo $opt3; ?>" height="300" width="250" style="padding: 8px 20px; border:2px dotted #6D7AD2; border-radius:6px;">
                    <?php
                } else {
                    echo $opt3;
                }
                ?>
            </label>
            </td>
        </tr>

        <tr style="padding: 0 !important; display: inline;">
            <td>
                <input type="radio" style="position: absolute; left: -9999px;" name="r1" id="nippa" value="<?php echo $opt4; ?>" onclick="radioclick(this.value,<?php echo $question_no ?>)"
                <?php
                if ($ans == $opt4) {
                    echo "checked";
                }
                ?>>
           <label for="nippa">
                <?php
                if (strpos($opt4, 'images/') != false) {
                    ?>
                    <img src="admin/<?php echo $opt4; ?>" height="300" width="250" style="padding: 8px 20px; border:2px dotted #6D7AD2; border-radius:6px;">
                    <?php
                } else {
                    echo $opt4;
                }
                ?>
            </label>    
            </td>
        </tr>
    </table>

    <?php

}

?>