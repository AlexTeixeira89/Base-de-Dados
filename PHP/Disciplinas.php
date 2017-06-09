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
             $sql = "SELECT * FROM Disciplinas;";
             $result = $db->query($sql);

             echo("<table border=\"1\">\n");
             echo("<tr><td>IdDis</td><td>Precedencias</td><td>Capacidade_Maxima</td></tr>\n");
             foreach($result as $row) {
                  echo("<tr><td>");
                  echo($row['IdDis']);
                  echo("</td><td>");
                  echo($row['Precedencias']);
                  echo("</td><td>");
                  echo($row['Capacidade_Maxima']);
                  echo("</td></tr>\n");
            }
            echo("</table>\n");
            $db = null;
            } catch (PDOException $e) {
                  echo("<p>ERROR: {$e->getMessage()}<p/>");
            }
        ?>
     </body>
<html>
