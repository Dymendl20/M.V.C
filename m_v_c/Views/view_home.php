<?php

$titre = 'Mon Blog';

ob_start();
foreach ($posts as $post):?>

<article>
  <header>
    <h1 class="titreBillet">
      <a href="index.php?action=post&id=<?= $post['id'] ?>">
        <?= htmlentities($post['titre'])?>
      </a>
    </h1>
    <time><?= $post['date'] ?></time>
  </header>
  <p><?= $post['contenu'] ?></p>
</article>
<hr />

<?php endforeach;
$contenu = ob_get_clean();
require 'layout.php';
?>
