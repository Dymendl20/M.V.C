<?php
namespace Blog\Models;
// Model gérant l'affichage des commentaires associés à un article //
class CommentsModel extends ModelBdd {

  public static function getByPostId($post_id) {
    $bdd = parent::getBdd();
    $req1 = "SELECT id AS id, created_at AS date, pseudo AS pseudo, post_id AS post_id, texte AS contenu
    FROM comments
    WHERE post_id=:post_id";

    $statement = $bdd->prepare($req1);
    $statement->bindParam(":post_id", $post_id, \PDO::PARAM_INT);
    $statement->execute();
    return $statement->fetchall();
  }
}


?>
