
<html>
     <body>
           <form action="Novo_Professor.php" method="post">
                 <h3>Insert a new Professor</h3>
                 <p>IdProf.: <input type="int" name="IdProf"/></p>
                 <p>Morada.: <input type="text" name="Morada"/></p>
                 <p>Data de Nascimento.: <input type="date" name="Data de Nascimento"/></p>

                 <?php
                     try {
                          $host = "127.0.0.1";
                          $user ="root";
                          $password = "root";
                          $dbname = "Escola_de_musica";
                          $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                         
                         echo("<p>$sql</p>");
                         $db->query($sql);
                         $db->query($sql);
                         $db = null;
                        }
              
                   catch (PDOException $e) {
                          echo("<p>ERROR: {$e→getMessage()}<p/>");
                   }
              ?>

          <p><input type="submit" value="Submit"/></p>
       </form>

  </body>
</html>
