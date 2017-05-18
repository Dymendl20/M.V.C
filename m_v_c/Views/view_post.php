<?php

$titre = htmlentities($post['titre']);

ob_start();
?>

<article>
  <header>
    <h1 class="titreBillet">
      <?= htmlentities($post['titre']) ?>
    </h1>
    <time><?= $post['date'] ?></time>
  </header>
  <?= $post['contenu'] ?>
</article>
<hr />
<h2 id="titreReponses">Commentaires</h2>

<?php foreach ($comments as $comment): ?>
  <p>
    <strong><?= $comment['pseudo'] ?></strong><br/>
    <time><?= $comment['date'] ?></time><br/>
    <p><?= $comment['contenu'] ?></p>
  </p>
<?php endforeach;

$contenu = ob_get_clean();
require 'layout.php';
?>