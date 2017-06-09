
<html>
     <body>
           <form action="Nova_Disciplina.php" method="post">
                 <h3>Insert a new Disciblina</h3>
                 <p>IdDis.: <input type="text" name="IdDis"/></p>
                 <p>Precedencias.: <input type="int" name="Precedencia"/></p>
                 <p>Capacidade Maxima.: <input type="int" name="Capacidade Maxima"/></p>

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
