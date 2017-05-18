<?php
namespace Blog\Controllers;
use \Blog\Models;
// Classes des méthodes statiques gérant les commentaires et les erreurs de connection à la base de données //
class ControllerPost {

  public static function controllerComments($id) {
    $post = Models\PostModel::getById($id);
    $comments = Models\CommentsModel::getByPostId($id);
    require BASE_DIR.'Views/view_post.php';
  }

  public static function controllerError($e) {
    file_put_contents('public/logs/errors.log', date('c') . ' - ' .
    $msgError = $e->getMessage() . "\n");
    require BASE_DIR.'Views/view_error.php';
  }
}



?>
