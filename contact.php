<?php

session_start();

require_once "layouts/header.php";

?>
<section id="formMessage">
<section>
 
<?php if(isset($_SESSION['error'])): ?>
 
 <p><?php echo $_SESSION['error'] ?></p>


<?php unset($_SESSION['error']); endif; ?>

</section> 
</section>

<section id="postNewsLetter" style="display: flex; flex-direction: column; align-items: center;">
                     <section id="newsLetter">
                            <div>
                              <form action="userAsking.php" method="post">
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
<section style="display:flex; justify-content: center; transform: translateX(1%);">
<?php
require_once "layouts/footer.php";

?>
</section>