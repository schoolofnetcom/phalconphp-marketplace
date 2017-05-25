<?php


use Phalcon\Mvc\Model;
class Produtos extends Model{


      public $id;
      public $nome;
      public $preco;
      public $vendedor;
      public $descricao;
      public $vendido;
      

      
      public function getVendedor(){

          $vendedor = $this->vendedor;
          $aux = Usuarios::find("id = '$vendedor'");
           foreach ($aux as $aux2) {
               return $aux2->nome;
           }
      }

   public function initialize(){

     $this->setSource("produtos");
     
   }

}