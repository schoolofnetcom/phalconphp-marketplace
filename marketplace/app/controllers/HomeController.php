<?php


class HomeController extends ControllerBase{

   
    public function indexAction(){
    	

    	$this->assets->addCss("css/bootstrap.css");
         
         if ($this->session->has("logado")) {
         	$this->view->auth = true;
         }else{
         	$this->view->auth = false;
         }

        $this->view->produtos = Produtos::find("vendido = 0");
        
    }


}