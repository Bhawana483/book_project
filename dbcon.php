 <?php
    function doDB()
    {
        global $mysqli;
        //connect to server and select database; you may need it
        $mysqli = mysqli_connect("localhost", "root", "") or die("DB Server is down");
        mysqli_select_db($mysqli, "address_book") or die("DB not available");
        //if connection fails, stop script execution
        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        }
    }
    ?>