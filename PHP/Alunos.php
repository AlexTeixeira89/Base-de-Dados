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
             $sql = "SELECT * FROM Alunos;";
             $result = $db->query($sql);

             echo("<table border=\"1\">\n");
             echo("<tr><td>IdAl</td><td>Data de Nascimento</td><td>Morada</td></tr>\n");
             foreach($result as $row) {
                  echo("<tr><td>");
                  echo($row['IdAl']);
                  echo("</td><td>");
                  echo($row['Data de Nascimento']);
                  echo("</td><td>");
                  echo($row['Morada']);
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
