<html>
    <head>
        <meta http-equiv="refresh" content="1;url=https://cookai-nelsonchung.c9users.io/UI/Web/showresult.php" />
    </head>
<body>
    <?php
        $userresult = 'userresult.txt';
        $list = $_POST["pork"]."\n";
        $list = $list.$_POST["fish"]."\n";
        $list = $list.$_POST["beaf"]."\n";
        $list = $list.$_POST["chicken"]."\n";
        $list = $list.$_POST["duck"]."\n";
        $list = $list.$_POST["cabbage"]."\n";
        $list = $list.$_POST["spinach"]."\n";
        $list = $list.$_POST["chingchiang"]."\n";
        $list = $list.$_POST["celery"]."\n";
        $list = $list.$_POST["consin"]."\n";
        $list = $list.$_POST["brassicarapapekinensis"]."\n";
        $list = $list.$_POST["sweetpotatoleaves"]."\n";
        $list = $list.$_POST["loofah"]."\n";
        $list = $list.$_POST["benincasapruriens"]."\n";
        $list = $list.$_POST["bitter"]."\n";
        $list = $list.$_POST["corn"]."\n";
        $list = $list.$_POST["okra"]."\n";
        $list = $list.$_POST["youngcorn"]."\n";
        $list = $list.$_POST["radish"]."\n";
        $list = $list.$_POST["potato"]."\n";
        $list = $list.$_POST["carrot"]."\n";
        $list = $list.$_POST["bambooshoot"]."\n";
        $list = $list.$_POST["cauliflower"]."\n";
        file_put_contents($userresult, $list);
    ?>
    <?php
        header("Content-Type:text/html; charset=utf-8");
    ?> 
    <?php
        shell_exec('rm test.txt');
        shell_exec('bash /home/ubuntu/workspace/CookEngine/cookengine.sh >> test.txt&');
    ?>
    
    <?php
		echo '系統運算中';

        $wait_time=10;
        for ($i = 0; $i < $wait_time; $i++) {
            echo "..........";
            flush();
            ob_flush();
            sleep(1);
        }
        echo "<br>準備產生建議清單";
        flush();
        ob_flush();
    ?>
    

</body>
</html>
