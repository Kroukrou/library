<?php    

      require_once "includes/connexion.php";

      require_once "layouts/header.php"; 
      
      $query = $db->query('SELECT events.*, reservations.price_reservation FROM events INNER JOIN reservations ON reservations.reservation_event_id = events.id ORDER BY events.date_event DESC LIMIT 2');

      $query->execute();
      
      $posts = $query->fetchAll();
      
      
      
    
    ?>

    <section style="border: 1em solid black;transform: translateX(-1.5%);background-color:beige;height:50rem;width:100vw;">
    <section style="position:relative;right:5rem;top:1rem;height:20rem;transform:translateX(50%);">
    <main style="border: 1em solid white;transform:translateX(-10%);height:48rem;position:relative;top:1rem;">

    <?php foreach($posts as $post): ?>
     
    <div style="
      
      transform:translateX(-10%);
      
      display:flex;
      
      flex-direction:column; 
      
      justify-content:space-between;
      
      align-items:center;
      
      margin-bottom:4rem;

      ">

    <h1>
      
       <?= $post['title_event']; ?>
      
    </h1>
    
    <ul>
    
    <li>

    <img style="height:5rem;"class="meetingImg" src="public/img/Rencontres/<?= $post["picture_event_author"]; ?>" alt="ImageAnimation">
    
    </li>
  
    <p>
    
    <li>
      
      <?= $post['date_event']; ?>
    
    </li>
    
    <li>
      
       <?= $post['public_event_age']; ?> ans
      
    </li>
    
    <li>
      
       <?php if($post['necessary_reservation'] == 1){ 
         
            echo "Réservation nécessaire";}else{ 
              
            echo "Réservation pas requise";}  ?>
    </li>
    
    <li>
      
       <?= $post['nb_max_registration_event']; ?> places disponibles
      
    </li>
    
    <li>
      
       <?= $post['price_reservation']; ?>&euro;
      
    </li>
    
    <li>
      
       <?php if($post['meeting_free'] == 1){ 
         
             echo "Rencontre gratuite";}else{ 
               
             echo "Rencontre payante";}?>
             
    </li>
    
    </p>
   
    </ul>
 
    </div>
       
    <?php endforeach; ?>  
       
    </main>
    
    </section>
    
    </section>
    
    <?php require_once "layouts/footer.php"; ?>
