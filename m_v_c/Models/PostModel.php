<?php
namespace Blog\Models;
// Model gérant l'affichage des posts (articles) et de la récupération de l'id d'un post (article) //
class PostModel extends ModelBdd {

  public static function getById($post_id) {
    $bdd = parent::getBdd();
    $req = "SELECT id AS id, created_at AS date, titre AS titre, description AS contenu
    FROM posts
    WHERE id=?";

    $statement = $bdd->prepare($req);
    $statement->execute(array($post_id));
    if ($statement->rowCount() === 1) {
      return $statement->fetch(\PDO::FETCH_ASSOC);
    } else {
      throw new NotFoundException('Post not found');
    }
  }

  public static function getAll() {
    $bdd = parent::getBdd();

    $posts = $bdd->query(
      "SELECT id AS id, created_at AS date, titre AS titre, description AS contenu
      FROM posts
      ORDER BY created_at DESC");
      return $posts;
    }
  }

  ?>
