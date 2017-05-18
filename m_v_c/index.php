<?php
//---------- github/Godefroy/tp-php-mvc ----------//
//---------- GITHUB GODEFROY (CITY INVADERS) ----------//

use \Blog\Controllers;

define('BASE_DIR', __DIR__.'/');

//autoload avec la fonction file_exists :
spl_autoload_register(function ($class) {
  $class = str_replace('Blog\\', '', $class);
  $class = str_replace('\\', '/', $class);
  $class = str_replace('ControllerFront\\', '.$class.'.'.php', $class);
  //$class = ltrim($class, '\\');


  //var_dump($class);

  /*if (file_exists(BASE_DIR.'Models/'.$class.'.php')) {
    var_dump($class);
    include BASE_DIR.'Models/'.$class.'.php';
  }
  if (file_exists(BASE_DIR.'Controllers/'.$class.'.php')) {
    var_dump($class);
    include BASE_DIR.'Controllers/'.$class.'.php';
  }*/
  if (file_exists($class.'.php')) {
    include $class.'.php';
  }
});
//Avec la fonction strpos() :
//spl_autoload_register(function ($class) {
//  if (strpos($class, 'Model') !== false) {
//    require 'Controllers/'.$class.'.php';
//  }
//}

//try déterminant la redirection des pages en fonction de $action
try {
  $action = isset($_GET['action']) ? $_GET['action'] : '';
  if ($action == 'post'){
    if (!isset($_GET['id']) || !ctype_digit($_GET['id'])) {
      throw new NotFoundException('Post not found');
    }
    $id = $_GET['id'];
    Controllers\ControllerPost::controllerComments($id);
  } else {
    Controllers\ControllerFront::controllerHome();
  }
}
catch (Exception $e) {
  Controllers\ControllerPost::controllerError($e);
}



?>
