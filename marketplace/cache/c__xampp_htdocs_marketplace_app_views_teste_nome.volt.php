<!DOCTYPE html>
<html>
<head>
	<title>Minha Segunda view</title>
</head>
<body>
 

   <?php foreach ($dados as $dado) { ?>
     
     <h2>Nome:<?= $dado->nome ?></h2>
      <h3>Idade:<?= $dado->idade ?></h3>
      <p>Altura:<?= $dado->altura ?></p>
      <p>Trabalho:<?= $dado->trabalho ?></p>
   <?php } ?>
  

</body>
</html>