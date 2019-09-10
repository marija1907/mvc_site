<?php
//echo "welcome poruke";

foreach($this->administratori as $administrator){
    $user = $administrator->username;
    $pass = $administrator->password;
}
echo "<br>";
echo "<p style='font-size:18px;'><b>Dobrodosli " . $user . "</b></p>";
echo "<br>";


foreach($this->svePoruke as $poruka){ ?>
             <p>Ime i Prezime: <?=$poruka->ime_prezime?> </p>
             <p>Email: <?=$poruka->email?> </p>
             <p>Odgovor: <?=$poruka->odgovoreno?> </p>
             <p>Sadrzaj poruke: <?=$poruka->sadrzaj_poruke?> </p>
             <hr>
<?php } ?>