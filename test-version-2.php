<!DOCTYPE html>
<?php
/*
  Test for Guidance Solutions.
  Author: Frank Thoeny
  Phone: (626)472-4515
  
  As the library grows, the sreen will scroll to the letter selected. If there are no books with that letter, the letter will not be blue and underlined.
  
    
*/

$servername = "localhost";
$username = "admin";
$password = "bingo";
$database = "guidance_test";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// group alphabetically results and get the first letter with SQL SELECT
$result = $conn->query("SELECT SUBSTRING(title, 1, 1) AS alpha, title FROM books GROUP BY SUBSTRING(title, 0, 2), title ORDER BY alpha, title");

// array that is created in foreach results
$temp = array();   
?>
    <html>

    <head>
        <title>Guidance Test</title>
        <style>
            ul {
                float: left;
                width: 100%;
                list-style: none;
                padding: 0;
                margin: 0;
            }
            
            li {
                float: left;
                margin: 0;
                padding: 15px 15px 25px;
                font-size: 25px;
                cursor: pointer;
            }
            
            li.selected {
                text-decoration: underline;
                color: blue;
            }
        </style>
        <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script>
            $(document).ready(function () {

                $("#alphabet-glossary li").each(function () {
                    
                    elementClick = $(this).attr("id"); //get respective 'Id' for example 'a','b','c'.. etc.,
                    
                    if($("#div_" + elementClick).length){
                        
                        $(this).addClass("selected"); // selected only the books in the library that start with that letter.
                    
                    }

                    $(this).click(function () { //On click of any Alphabet

                        //$("#alphabet-glossary li").removeClass("selected"); //Initially remove "selected" class if any
                        //$(this).addClass("selected"); //Add "selected" class for the clicked one

                        elementClick = $(this).attr("id"); //get respective 'Id' for example 'a','b','c'.. etc.,
                        
                        //scroll to the particular DOM Element
                        if($("#div_" + elementClick).length){
                            $("html, body, article").animate({
                                scrollTop: $("#div_" + elementClick).offset().top
                            }, 1000);
                            
                            console.log("you clicked on "+ elementClick+".");
                        }

                    });
                });
            });
        </script>
    </head>

    <body>
        
        <article>
            <ul id="alphabet-glossary">
                <li id="a">A</li>
                <li id="b">B</li>
                <li id="c">C</li>
                <li id="d">D</li>
                <li id="e">E</li>
                <li id="f">F</li>
                <li id="g">G</li>
                <li id="h">H</li>
                <li id="i">I</li>
                <li id="j">J</li>
                <li id="k">K</li>
                <li id="l">L</li>
                <li id="m">M</li>
                <li id="n">N</li>
                <li id="o">O</li>
                <li id="p">P</li>
                <li id="q">Q</li>
                <li id="r">R</li>
                <li id="s">S</li>
                <li id="t">T</li>
                <li id="u">U</li>
                <li id="v">V</li>
                <li id="w">W</li>
                <li id="x">X</li>
                <li id="y">Y</li>
                <li id="z">Z</li>
            </ul>
            <?php

if ($result->num_rows > 0) {    
   
    // output data of each row and add to the temp Alphabetized multidimensional array.
    while($row = $result->fetch_assoc()) {
        $temp[$row['alpha']][] = $row['title'];
    } 
    
    // start the Alphabetized output loop for display...
    echo '<div class="content-container">'; 
    foreach( $temp as $key => $alpha ) {  // set the $key.    
        echo '<!-- '.$key.' -->'; 
        echo '<div id="div_'.strtolower($key).'">';    
        echo '<h3>'.$key.'</h3>';
        foreach( $alpha as $title ) { // set the book titles.
            echo '<p><a href="?book='.$title.'">'.$title.'</a></p>';
        }
        echo '</div>';
    }
    
   echo '</div>';
}else {    
    echo "Hey! 0 results. Something went wrong!!!";    
}
$conn->close(); // close down the database connection. Deter SQL injection!!!
        
?>
        </article>
    </body>

    </html>