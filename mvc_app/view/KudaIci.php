
<h3><b>Obilazak :</b></h3>
<?php
foreach($this->kategorije as $kategorija){
?>
    <?php $k = $kategorija->name;
             echo "<a href='Site/kudaIci'>" . strtoupper($k). "</a>";
             echo "<br>"; ?>
    
<?php }  ?>
<div style="width:100%;margin-left:80px;">
<div style="width:350px;float:left;" class="smestaj">
<h2 style="background-color: #E1C847;border-radius:5px;">SMESTAJ</h2>
<?php
foreach($this->smestaji as $smestaj){
    ?>
             <p>Naziv smestaja: <?=$smestaj->naziv_smestaja?> </p>
             <p>Opis smestaja: <?=$smestaj->opis_smestaja?> </p>
             <img src="kudaici/<?=$smestaj->slika_smestaja?>" style='border-radius:7px;border:1px solid black;width:316px;height:235px;'>
             <br>
             <hr>
    <?php } ?>
</div>
<div class="restoran" style="width:350px;float:left;margin-left:10px;" >
<h2 style="background-color: #E1C847;border-radius:5px;">RESTORANI</h2>
<?php
foreach($this->restoraniK as $restoran){
    ?>
             <p>Naziv restorana: <?=$restoran->naziv_restorana?> </p>
             <p>Opis restorana: <?=$restoran->opis_restorana?> </p>
             <img src="kudaici/<?=$restoran->slika_restorana?>" style='border-radius:7px;border:1px solid black;width:316px;height:235px;'>
             <br>
             <hr>
    <?php }?>
</div>
<div class="ZNAMENITOSTI" style="width:350px;float:left;margin-left:10px;" >
<h2 style="background-color: #E1C847;border-radius:5px;">ZNAMENITOSTI</h2>
<?php
foreach($this->znamenito as $znamenitostK){
    ?>
             <p>Naziv znamenitosti: <?=$znamenitostK->naziv_znamenitosti?> </p>
             <p>Opis znamenitosti: <?=$znamenitostK->opis_znamenitosti?> </p>
             <img src="kudaici/<?=$znamenitostK->slika_znamenitosti?>" style='border-radius:7px;border:1px solid black;width:316px;height:235px;'>
             <br>
             <hr>
    <?php }?>
</div>
</div>



