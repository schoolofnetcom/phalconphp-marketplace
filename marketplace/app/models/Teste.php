<?php 

use Phalcon\Mvc\Model;

class Teste extends Model {

   

      public $id;

      public $nome;

      public $idade;

      public $altura;

      public $trabalho;


    public function initialize(){

        $this->setSource("tabela_teste");

    }

}