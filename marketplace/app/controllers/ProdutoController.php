<?php


class ProdutoController extends ControllerBase{

    public function indexAction(){
        
    }

    public function cadastrarAction(){

       $dados = $this->request->getPost();

          $produto = new Produtos();

          $produto->nome = $dados['nome'];
          $produto->preco = $dados['preco'];
          $produto->descricao = $dados['descricao'];
          $produto->vendedor = $this->session->get("logado");
          $produto->vendido = false;

          $produto->save();

          $this->response->redirect('');


    }

    public function verAction($id){
  
          if (empty($id) or  !isset($id)) {
                 	$this->response->redirect('');
           }else{
           
             $dados = Produtos::find("id = '$id'");

                 if ($dados->count() > 0 ) {
                 	 
                 	 $this->view->produto = $dados;              

                 }else{
                   $this->response->redirect('');
                 }


             

           } 

 }

   public function comprarAction($id){
        
          if (empty($id) or !isset($id)) {
             $this->response->redirect('');
          }else{

                  if ($this->session->has("logado")) {
                      
                      $compra = Produtos::findFirst("id = '$id'");
                      $compra->vendido = true;
                      $compra->update();
                      $this->response->redirect('');

                  }else{
                    echo "<h1>Só usuarios logados conseguem comprar produtos</h1>";
                  }


          }
   
   }
  

}