<!DOCTYPE html>

<head>
    <script src="/index.js"></script>
</head>

<html>

<body>
    <button id="testBtn">test</button>
    <br />
    <hr />
    <?php
    $debug = var_export($_REQUEST, true);
    error_log($debug);
    echo $debug;
    ?>
</body>

</html>