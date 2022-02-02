<?php 


session_start();

require_once "includes/connexion.php";

$query = $db->query('SELECT events.title_event, events.date_event FROM events  ORDER BY events.date_event DESC LIMIT 5');
$select = $db->query('SELECT * FROM books LIMIT 3');



              require_once "layouts/header.php"; ?>

              
             



              <section style="background-image: url(public/img/Lalibrairie/IMG_4934-min-1024x768.jpg);
              
              background-position: bottom;
              background-size: cover;
              transform: translate(0%);
              opacity: .5;

              
              ">
               <?php if(isset($_SESSION['success'])): ?>

              <p style="color: brown;font-weight:bold;position: absolute;transform: translate(0%, -210%);display:flex; justify-content: center; width: 100vw;"><?php echo $_SESSION['success'] ?></p>

              <?php unset($_SESSION['success']); endif; ?>
              <p>
                     <ul style="color: white; font-size: 1em;font-weight: bold;border-bottom: 1px dotted gray; width: 180vw;text-align: center;">
                            <li>Notre librairie comporte des livres jeunesse qui sauront satisfaire aussi bien les plus petits que les adolescents.</li>
                            <li>Située en plein centre Ville et facile d'accès.</li>
                            <li>Nous sommes ouvert de 8h à 12h et de 14h à 18h du Lundi au Vendredi.</li>
                     </ul>
                 </p>
              
              </section>
                         
              <section id="Events" style="width: 100%;">
                
                <h1>La librairie propose des activités ludiques et éducatives</h1>



                   <table>
                   
                    
                               <?php foreach($query->fetchAll() as $event): 
                               
                               $date_event = DateTime::createFromFormat('Y-m-d', $event['date_event']);      
                     
                               ?>
                            
                                   <tr>
                                          <td style="transform:translateY(-20%);">
                                          
                                                 <?= $event["title_event"];?>
                                          
                                          </td> 
                                     
                                          <td>
                                               le <?= $date_event->format('d.m.Y'); ?> 
                            
                                          </td>
                                   </tr>
                               
                               <?php endforeach;?>
                              
                     </table>       
                            
              </section>
            
              <section id="someBooks">    
                   
                     <main>
                       <h1>Voici quelques Livres et Romans</h1>
                          <?php foreach($select->fetchAll() as $book):?>
                         
                          <div>
                             <h3><?= $book["title_book"];?> <?= $book["author"]; ?></h3>
                             <p>Résumé :</p><p><?= $book["recap_book"]; ?></p>
                             <p>Coût : <?= $book["price"]; ?> &euro;</p>   
                             <a href="page_produit.php?id=<?= $book["id"];?>">Fiche détaillée</a>
                           </div>

                           <?php endforeach; ?>
                     </main>  
              </section>
              
       <?php require_once "layouts/footer.php"; ?>