<html>
<head><title>DMQP-Practical : GUI</title></head>
<body>
    <h1>DMQP-Practical : GUI</h1>
    <form method="post" action=""> <!--Form containing 3-Buttons for queries-->
        <button type="submit" name="Q1">Query 1</button>
        <button type="submit" name="Q2">Query 2</button>
        <button type="submit" name="Q3">Query 3</button>
    </form>
    <?php
        $conn = mysqli_connect("localhost", "root", "", "BMSystem"); // connection establishment....
        if($conn) { 
            echo "<br>Connection successful !<br>"; 
        }
        else { 
            echo "<br>Connection failed !<br>";
            exit();
        }
        // function to execute query....
        function executeQuery($conn, $query) {
            $r = mysqli_query($conn, $query);
            if($r) {
                echo "<br>Query Successful !<br>";
                while($info = mysqli_fetch_assoc($r)) { // fetches an 'associative' array....
                    foreach($info as $colName => $colVal) { // dynamic displaying of the tables....
                        echo "$colName : $colVal<br>"; // displays the key-value pair....
                    }
                    echo"<br>";
                }
            } else {
                echo "<br>Query Failed !<br>";
            }
        }
        // logic to check if any of the query buttons are clicked....
        if(isset($_POST['Q1'])) { // Query 01...
            $q1 = "SELECT * FROM books";
            executeQuery($conn, $q1); 
        }
        elseif(isset($_POST['Q2'])) { // Query 02...
            $q2 = "SELECT ISBN, Title, Genre FROM books";
            executeQuery($conn, $q2); 
        }
        elseif(isset($_POST['Q3'])) { // Query 03...
            $q3 = "SELECT Price, Quantity, PublicationDate FROM books";
            executeQuery($conn, $q3); 
        }
        mysqli_close($conn); // closing connection....
    ?>
</body>
</html>
