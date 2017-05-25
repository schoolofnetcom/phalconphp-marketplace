<?php


class UsuarioController extends ControllerBase{

       public function indexAction(){

       }

       public function cadastroAction(){
       	
         if ($this->request->isPost()) {
         	
            
       	 $dados = $this->request->getPost();
         $email = $dados['email'];
       	   $aux = Usuarios::find("email = '$email'");

       	   if ($aux->count() < 1) {
       	   	   
                $usuario = new Usuarios();
                $usuario->nome = $dados['nome'];
                $usuario->email = $dados['email'];
                $usuario->senha = md5($dados['senha']);
                $usuario->save();
                $this->response->redirect('');
                  

       	   }else{

       	   	  echo "Usuario já cadastrado com esse e-mail";
       	   }



         }else{

         	echo "<h1>Acesso Negado</h1>";

         }




       }




       public function loginAction(){

          if ($this->request->isPost()) {
          	 
                $dados = $this->request->getPost();
                $email = $dados['email'];
                $senha = md5($dados['senha']);

                $aux = Usuarios::find("email = '$email' AND senha = '$senha'");

                 if ($aux->count() > 0) {
                 	  
                 	  foreach ($aux as $aux2) {
                 	  	$this->session->set("logado",$aux2->id);
                        $this->response->redirect('');
                 	  }
                    

                 }else{
                 	echo "Senha ou E-mail incorretos, ou usuário inexistente";
                 }


          }else{

          	echo "<h1>Acesso Negado</h1>";
          }

       }

}