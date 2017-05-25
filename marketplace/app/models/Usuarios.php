<?php 


use Phalcon\Mvc\Model;

class Usuarios extends Model{

   
     public $id;
     public $nome;
     public $senha;
     public $email;





   public function initialize(){

     $this->setSource('usuarios');

   }

}