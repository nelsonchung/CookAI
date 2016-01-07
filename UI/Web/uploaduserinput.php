<html>
<body>
    <!--
    <?php echo $_POST["pork"]; ?><br>
    <?php echo $_POST["fish"]; ?><br>
    <?php echo $_POST["beaf"]; ?><br>
    <?php echo $_POST["chicken"]; ?><br>
    <?php echo $_POST["duck"]; ?><br>
    <?php echo $_POST["cabbage"]; ?><br>
    <?php echo $_POST["spinach"]; ?><br>
    <?php echo $_POST["chingchiang"]; ?><br>
    <?php echo $_POST["celery"]; ?><br>
    <?php echo $_POST["consin"]; ?><br>
    <?php echo $_POST["brassicarapapekinensis"]; ?><br>
    <?php echo $_POST["sweetpotatoleaves"]; ?><br>
    <?php echo $_POST["loofah"]; ?><br>
    <?php echo $_POST["benincasapruriens"]; ?><br>
    <?php echo $_POST["bitter"]; ?><br>
    <?php echo $_POST["corn"]; ?><br>
    <?php echo $_POST["okra"]; ?><br>
    <?php echo $_POST["youngcorn"]; ?><br>
    <?php echo $_POST["radish"]; ?><br>
    <?php echo $_POST["potato"]; ?><br>
    <?php echo $_POST["carrot"]; ?><br>
    <?php echo $_POST["bambooshoot"]; ?><br>
    <?php echo $_POST["cauliflower"]; ?><br>
    -->
    
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
    shell_exec('rm test.txt');
    shell_exec('bash /home/ubuntu/workspace/CookEngine/cookengine.sh >> test.txt');
    sleep(10);
    #echo exec('cat test.txt'); #only information in last line
    $output = shell_exec('cat test.txt');
    echo "<pre>$output</pre>";
    #echo shell_exec('cat test.txt')
    ?>
</body>
</html>
