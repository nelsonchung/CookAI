<html>
<body>
    <?php echo $_POST["pork"]; ?><br>
    <?php echo $_POST["fish"]; ?><br>
    <?php echo $_POST["chicken"]; ?><br>
    <?php echo $_POST["duck"]; ?><br>
    <?php echo $_POST["cabbage"]; ?><br>
    <?php echo $_POST["spinach"]; ?><br>
    <?php echo $_POST["ching_chiang"]; ?><br>
    <?php echo $_POST["celery"]; ?><br>
    <?php echo $_POST["con_sin"]; ?><br>
    <?php echo $_POST["brassica_rapa_pekinensis"]; ?><br>
    <?php echo $_POST["sweet_potato_leaves"]; ?><br>
    <?php echo $_POST["loofah"]; ?><br>
    <?php echo $_POST["benincasa_pruriens"]; ?><br>
    <?php echo $_POST["bitter"]; ?><br>
    <?php echo $_POST["corn"]; ?><br>
    <?php echo $_POST["okra"]; ?><br>
    <?php echo $_POST["young_corn"]; ?><br>
    <?php echo $_POST["radish"]; ?><br>
    <?php echo $_POST["potato"]; ?><br>
    <?php echo $_POST["carrot"]; ?><br>
    <?php echo $_POST["bamboo"]; ?><br>
    <?php echo $_POST["cauliflower"]; ?><br>
    
    <?php
        $userresult = 'userresult.txt';
        $list = $_POST["pork"]."\n";
        $list = $list.$_POST["fish"]."\n";
        $list = $list.$_POST["chicken"]."\n";
        $list = $list.$_POST["duck"]."\n";
        $list = $list.$_POST["cabbage"]."\n";
        $list = $list.$_POST["spinach"]."\n";
        $list = $list.$_POST["ching_chiang"]."\n";
        $list = $list.$_POST["celery"]."\n";
        $list = $list.$_POST["con_sin"]."\n";
        $list = $list.$_POST["brassica_rapa_pekinensis"]."\n";
        $list = $list.$_POST["sweet_potato_leaves"]."\n";
        $list = $list.$_POST["loofah"]."\n";
        $list = $list.$_POST["benincasa_pruriens"]."\n";
        $list = $list.$_POST["bitter"]."\n";
        $list = $list.$_POST["corn"]."\n";
        $list = $list.$_POST["okra"]."\n";
        $list = $list.$_POST["young_corn"]."\n";
        $list = $list.$_POST["radish"]."\n";
        $list = $list.$_POST["potato"]."\n";
        $list = $list.$_POST["carrot"]."\n";
        $list = $list.$_POST["bamboo"]."\n";
        $list = $list.$_POST["cauliflower"]."\n";
        file_put_contents($userresult, $list);
    ?>
</body>
</html>
