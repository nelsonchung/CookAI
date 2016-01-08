<html>
<body>
    <?php
    header("Content-Type:text/html; charset=utf-8");
    ?> 
    
    <?php
    $output = shell_exec('cat test.txt');
    echo "<pre>$output</pre>";
    #echo shell_exec('cat test.txt')
    ?>
    
</body>
</html>