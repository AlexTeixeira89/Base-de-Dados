
<html>
     <body>
           <form action="NovoInstrumento.php" method="post">
                 <h3>Insert a new Instrumento</h3>
                 <p>IdInst.: <input type="text" name="IdInst"/></p>
                 <p>Peso.: <input type="float" name="Peso"/></p>
                 <p>Valor.: <input type="float" name="Valor"/></p>

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
