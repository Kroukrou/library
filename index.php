<?php 


session_start();

require_once "includes/connexion.php";

$query = $db->query('SELECT events.title_event, events.date_event FROM events  ORDER BY events.date_event DESC LIMIT 5');
$select = $db->query('SELECT * FROM books LIMIT 3');


?>
              <?php   require_once "layouts/header.php"; ?>

              <section>
               
              <p>
                     <ul style="color:white;">
                            <li>Notre librairie comporte des livres jeunesse qui sauront satisfaire aussi bien les plus petits que les adolescents.</li>
                            <li>Située en plein centre Ville et facile d'accès.</li>
                            <li>Nous sommes ouvert de 8h à 12h et de 14h à 18h du Lundi au Vendredi.</li>
                     </ul>
                 </p>
              
              </section>
                         
              <section id="Events">
                
                <h1>La librairie propose aussi des activités ludiques et éducatives</h1>



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
                    <section id="callToAction">
              
                     <!-- <a href="conseils_de_lectures">« voir plus de livres »</a> position:relative; left:45%;transform:translateY(-110%); font-size:0.6rem; -->
                 <a style="position:absolute;left:6rem;transform:translateY(-100%);font-size:0.8rem;"
   href="conseils_de_lectures.php">voir plus de livres &erarr; </a>
              </section> 
              
               <section id="formMessage">
                    <section>
                     
                    <?php if(isset($_SESSION['error'])): ?>
                     
                     <p><?php echo $_SESSION['error'] ?></p>


                    <?php unset($_SESSION['error']); endif; ?>
                    
                    <?php if(isset($_SESSION['success'])): ?>

                    <p><?php echo $_SESSION['success'] ?></p>

                    <?php unset($_SESSION['success']); endif; ?>
                    
                    </section> 
              </section>
               
               <section id="postNewsLetter">
                     <section id="newsLetter">
                            <div>
                              <form action="newsletter.php" method="post">
                                <p>
                           
                                   <div>                         
                                       <label id="TheLabel1"  style="width:10rem;transform:translateX(25%);"for="email">Inscrivez-vous à notre NewsLetter en laissant votre email ici</label>
                                        <input type="email" name="email">
                                   </div> 
                              
                                   <label id="TheLabel2" class="rgpd" for="rgpd">En cochant la case ci-dessous, vous acceptez nos conditions d'utilisation</label> 
                                   <input required type="checkbox" name="rgpd">
                             
                                   <input type="hidden">

                                   <button type="submit">Ok</button>

                                 
                                 </p>
                              </form>
                           </div>
                     </section>
              </section>
       <?php require_once "layouts/footer.php"; ?>

 
