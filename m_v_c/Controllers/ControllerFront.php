<?php
namespace Blog\Controllers;
use \Blog\Models;

// Controller gérant la page de présentation et son affichage en faisant le lien avec la bdd avec la méthode ControllerHome //
abstract class ControllerFront {

  public static function controllerHome() {
    $posts = Models\PostModel::getAll();
    require BASE_DIR.'Views/view_home.php';
  }
}


?>
