<?php
namespace Blog\Models;
// Classe mère des Models faisant la connection à la base de données avec le framework de persistance PDO //
abstract class ModelBdd {

  private static $bdd;
  public static function getBdd() {
    if (!self::$bdd) {
      self::$bdd = new \PDO('mysql:host=localhost;dbname=mvc;charset=utf8','root', '', array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION));
    }

    return self::$bdd;
  }
}
?>
