<?php
$conn = pg_connect("host=localhost dbname=course user=college_admin password=SecurePass123");
if (!$conn) {
    die("connection failed");
}
?>
<html>
<head>
    <title>Courses - Danish DevOps</title>
</head>
<body>
    <h1>Available Courses</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Course Name</th>
            <th>Tech Stack</th>
            <th>Duration</th>
            <th>Level</th>
        </tr>
        <?php
        $result = pg_query($conn, "SELECT * FROM courses");
        while ($row = pg_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row["id"] . "</td>";
            echo "<td>" . $row["course_name"] . "</td>";
            echo "<td>" . $row["tech_stack"] . "</td>";
            echo "<td>" . $row["duration"] . "</td>";
            echo "<td>" . $row["level"] . "</td>";
            echo "</tr>";
        }
        pg_close($conn);
        ?>
    </table>
</body>
</html>
