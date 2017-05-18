<!doctype html>
  <html lang="fr">

    <head>
      <meta charset="UTF-8" />
      <link rel="stylesheet" href="public/CSS/style.css" />
      <title><?php echo htmlentities($titre) ?> </title>
    </head>
    
    <body>
      <div id="global">

        <header>
          <a href="index.php"><h1 id="titreBlog">The Dymen Blog</h1></a>
          <p>Je vous souhaite la bienvenue sur ce modeste blog.</p>
        </header>

      <div id="contenu"><?php echo $contenu ?>
      </div> <!-- #contenu -->
        
        <footer id="piedBlog">

        <hr />
          <form method="post" action="index.php?action=commenter">
            <p><I>Laissez un commentaire sur ce Post !</I></p>
              <input id="author" name="author" type="text" placeholder="Votre pseudo" required /><br /><br />
              <textarea id="txtCommentaire" name="contenu" rows="4"
              placeholder="Votre commentaire" required></textarea><br /><br />
              <input type="hidden" name="id" value="" />
              <input type="submit" value="Envoyer" />
          </form><br /><I>Blog réalisé avec PHP, HTML5 et CSS... (^_^)'</I>

        </footer>
       
        <center><p><I>Copyright @ImieDL20-MVC March,2017</I></p></center>

      </div> <!-- #global -->
    </body>

</html>
