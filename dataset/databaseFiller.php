<?php
$db=new PDO('mysql:host=localhost;dbname=expenseManager;charset=utf8','root','');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$url='commerciaux.json';
$contents = file_get_contents($url);
$contents = utf8_encode($contents);
$commerciaux = json_decode($contents);
$url='entreprise.json';
$contents = file_get_contents($url);
$contents = utf8_encode($contents);
$entreprises = json_decode($contents);
$url='client.json';
$contents = file_get_contents($url);
$contents = utf8_encode($contents);
$clients = json_decode($contents);

function genMail($nom,$prenom,$ent){
    $nom=strtolower($nom);
    $prenom=strtolower($prenom);
    $ent=str_replace([' ','.'],['',''],$ent);
    $ent=strtolower($ent);
    return $prenom.'.'.$nom.'@'.$ent.'.com';
}

try {
    foreach ($entreprises->data as $entreprise) {
        $sql = 'INSERT INTO entreprise (entSiret,entNom) VALUES (' . $entreprise[1] . ',\'' . $entreprise[0] . '\')';
        $db->query($sql);
    }

    foreach ($clients->data as $client) {
        $entreprise = rand(1, 99);
        $sql = 'INSERT INTO client (
            cliNom,
            cliPrenom,
            cliFonction,
            cliContact,
            entSiret) 
          VALUES ( 
            \'' . $client[0] . '\',
            \'' . $client[1] . '\',
            \'' . $client[2] . '\',
            \'' . genMail($client[0], $client[1], $entreprises->data[$entreprise][0]) . '\',
            ' . $entreprises->data[$entreprise][1] . ')';
        $db->query($sql);
    }

    $i = 0;
    foreach ($commerciaux->data as $commercial) {
        $i++;
        $sql = 'INSERT INTO salarie (
            salNom,
            salPrenom,
            salFonction,
            salMail,
            salMdp,
            entSiret) 
          VALUES ( 
            \'' . $commercial[0] . '\',
            \'' . $commercial[1] . '\',
            \'Commercial\',
            \'' . genMail($commercial[0], $commercial[1], $entreprises->data[0][0]) . '\',
            \'' . password_hash($commercial[0] . ' ' . $commercial[1], PASSWORD_DEFAULT) . '\',
            ' . $entreprises->data[0][1] . ')';
        $db->query($sql);
        if ($i == 20) break;
    }
    $i = 0;
    foreach ($commerciaux->data as $commercial) {
        $i++;
        if ($i > 20) {
            $sql = 'INSERT INTO salarie (
            salNom,
            salPrenom,
            salFonction,
            salMail,
            salMdp,
            entSiret) 
          VALUES ( 
            \'' . $commercial[0] . '\',
            \'' . $commercial[1] . '\',
            \'Gestionnaire\',
            \'' . genMail($commercial[0], $commercial[1], $entreprises->data[0][0])  . '\',
            \'' . password_hash($commercial[0] . ' ' . $commercial[1], PASSWORD_DEFAULT) . '\',
            ' . $entreprises->data[0][1] . ')';
            $db->query($sql);
        }
        if ($i == 25) break;
    }
}catch (\mysql_xdevapi\Exception $exSql){
    echo $exSql;

}
