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
             $sql = "SELECT * FROM Instrumentos;";
             $result = $db->query($sql);

             echo("<table border=\"1\">\n");
             echo("<tr><td>IdInst</td><td>Peso</td><td>Valor</td></tr>\n");
             foreach($result as $row) {
                  echo("<tr><td>");
                  echo($row['IdInst']);
                  echo("</td><td>");
                  echo($row['Peso']);
                  echo("</td><td>");
                  echo($row['Valor']);
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
