<?php


class TesteController extends ControllerBase{
      
        public function indexAction(){
         
        }

        public function nomeAction(){
        
         
          $this->view->dados = Teste::find();

        }


}