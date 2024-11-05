<?php
session_start();
include "connection.php";
$date = date("Y-m-d H:i:s");
$_SESSION["end_time"] = date("Y-m-d H:i:s", strtotime($date . "+ $_SESSION[exam_time] minutes"));
include "header.php";
?>


<div class="row" style="margin: 0px; padding:0px; margin-bottom: 50px;">

    <div class="col-lg-6 col-lg-push-3" style="min-height: 500px; background-color: white;">

        <?php
        $correct = 0;
        $wrong = 0;

        if (isset($_SESSION["answer"])) {
            for ($i = 1; $i <= sizeof($_SESSION["answer"]); $i++) {
                $answer = "";
                $res = mysqli_query($link, "select * from questions where category='$_SESSION[exam_category]' && question_no=$i");
                while ($row = mysqli_fetch_array($res)) {
                    $answer = $row["answer"];
                }

                if (isset($_SESSION["answer"][$i])) {
                    if ($answer == $_SESSION["answer"][$i]) {
                        $correct = $correct + 1;
                    } else {
                        $wrong = $wrong + 1;
                    }
                } else {
                    $wrong = $wrong + 1;
                }
            }
        }

        $count = 0;
        $res = mysqli_query($link, "select * from questions where category='$_SESSION[exam_category]'");
        $count = mysqli_num_rows($res);
        $wrong = $count - $correct;


        ?>
        <div class="quiz-result">

            <table class="table table-striped table-hover table-borderedz">
                <thead class="table-cs">
                    <tr class="table-cs">
                        <th colspan="2" style="text-align: center" class="table-cs">Your Result</th>

                    </tr>
                </thead>
                <tbody>
                    <tr class="table-cs">

                        <td class="table-cs">Total Questions</td>
                        <td class="table-cs"><?php echo $count; ?></td>

                    </tr>

                    <tr class="table-cs">

                        <td class="table-cs">Correct Answer</td>
                        <td class="table-cs"> <?php echo $correct; ?></td>

                    </tr>

                    <tr class="table-cs">

                        <td class="table-cs">Wrong Answer</td>
                        <td class="table-cs"><?php echo $wrong; ?></td>

                    </tr>

                    <tr class="table-cs">

                        <td class="table-cs">Comment</td>
                        <td class="table-cs"><?php
                                                if ($correct > 4) {
                                                    echo "Great!!";
                                                    echo '<video width="550" height="300" autoplay>';
                                                    echo '<source src="asset/videos/Great.mp4" type="video/mp4" autoplay>';
                                                    echo 'Your browser does not support the video tag.';
                                                    echo '</video>';
                                                   
                                                   

                                                } elseif ($correct > 3) {
                                                    echo "Well done!!";
                                                    echo '<video width="550" height="300" autoplay>';
                                                    echo '<source src="asset/videos/welldone.mp4" type="video/mp4" autoplay>';
                                                    echo 'Your browser does not support the video tag.';
                                                    echo '</video>';

                                                } elseif ($correct > 2) {
                                                    echo "Good Job!!";
                                                    echo '<video width="550" height="300" autoplay>';
                                                    echo '<source src="asset/videos/goodjob.mp4" type="video/mp4" autoplay>';
                                                    echo 'Your browser does not support the video tag.';
                                                    echo '</video>';
                                                } else {
                                                    echo "It's Okay! We'll do it again!";
                                                    echo '<video width="550" height="300" autoplay>';
                                                    echo '<source src="asset/videos/itsokay.mp4" type="video/mp4" autoplay>';
                                                    echo 'Your browser does not support the video tag.';
                                                    echo '</video>';
                                                }
                                                ?></td>

                    </tr>
                </tbody>
            </table>
        </div>

    </div>

</div>

<?php




if (isset($_SESSION["exam_start"])) {

    $date = date("Y-m-d");
    mysqli_query($link, "insert into exam_results(id,username,exam_type,total_question,correct_answer,wrong_answer,exam_time)values(NULL,'$_SESSION[username]','$_SESSION[exam_category]','$count','$correct','$wrong','$date')") or die(mysqli_error($link));
}

if (isset($_SESSION["exam_start"])) {

    unset($_SESSION["exam_start"]);
?>
    <script type="text/javascript">
        window.location.href = window.location.href;
    </script>
<?php

}

?>


<?php
include "footer.php";
?>