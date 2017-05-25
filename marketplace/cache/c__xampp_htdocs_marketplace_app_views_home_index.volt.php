<!DOCTYPE html>
<html>
<head>
	<title>MarketPlace - School of Net</title>
</head>
<body>
 <h1>Lista de produtos:</h1>
   
    <ul>
    	<?php foreach ($produtos as $produto) { ?>
     	  
           <hr style="border-color: black;">
             <h4>Nome: <?= $produto->nome ?></h4>
             <h4>Preço: <?= $produto->preco ?> <bold>R$</bold></h4>
             <p>Vendedor: <?= $produto->getVendedor() ?></p>
             
             <a href="<?= $this->url->get('produto/ver/') ?><?= $produto->id ?>"><button class="btn btn-success">Visualizar</button></a>
        <?php } ?>
    </ul>

    
<?php if ($auth == true) { ?>
 <h2>Inserir Produto:</h2>
    <?= $this->tag->form(['produto/cadastrar', 'method' => 'post']) ?>
        
        <label>Nome do Produto: </label>
        <?= $this->tag->textField(['nome', 'class' => 'form-control']) ?>
        <label>Descrição do Produto:</label>
        <?= $this->tag->textArea(['descricao', 'class' => 'form-control']) ?>
        <label>Preço do Produto:</label>
        <?= $this->tag->numericField(['preco', 'class' => 'form-control']) ?>
        <br>
        <?= $this->tag->submitButton(['Cadastrar Produto', 'class' => 'form-control btn btn-success']) ?>
        <br>

    <?= $this->tag->endForm() ?>
    <br>
<?php } else { ?>
<h2>Login:</h2>

 <?= $this->tag->form(['usuario/login', 'method' => 'post']) ?>
    <label>Email:</label>
    <?= $this->tag->emailField(['email', 'class' => 'form-control']) ?>
    <?= $this->tag->passwordField(['senha', 'class' => 'form-control']) ?>
    <?= $this->tag->submitButton(['Logar', 'class' => 'form-control btn btn-success']) ?>
 <?= $this->tag->endForm() ?>

<h2>Cadastro: </h2>
     <?= $this->tag->form(['usuario/cadastro', 'method' => 'post']) ?>
         
         <label>Nome:</label>
         <?= $this->tag->textField(['nome', 'class' => 'form-control']) ?>
         <label>Email:</label>
         <?= $this->tag->emailField(['email', 'class' => 'form-control']) ?>
         <label>Senha:</label>
         <?= $this->tag->passwordField(['senha', 'class' => 'form-control']) ?>

         <?= $this->tag->submitButton(['Cadastrar', 'class' => 'form-control btn btn-success']) ?>

     <?= $this->tag->endForm() ?>
<?php } ?>
</body>
</html>