<?php

$titre = 'Error';

ob_start();
?>

<p>BDD EN PLS, a sad story presented by : <?= $msgError ?></p>;

<?php
$contenu = ob_get_clean();
require 'layout.php';
?>
