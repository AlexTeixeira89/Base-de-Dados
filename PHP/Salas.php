<html>
     <body>
         <?php
             try {
             $host = "127.0.0.1";
             $user ="root";
             $password = "root";
             $dbname = "Escola_de_musica";
             $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
             $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
             $sql = "SELECT * FROM Sala;";
             $result = $db->query($sql);

             echo("<table border=\"1\">\n");
             echo("<tr><td>Numero</td><td>Capacidade</td></td></tr>\n");
             foreach($result as $row) {
                  echo("<tr><td>");
                  echo($row['Número']);
                  echo("</td><td>");
                  echo($row['Capacidade']);
                  echo("</td><td>");
                 
            }
            echo("</table>\n");
            $db = null;
            } catch (PDOException $e) {
                  echo("<p>ERROR: {$e->getMessage()}<p/>");
            }
        ?>
     </body>
<html>
