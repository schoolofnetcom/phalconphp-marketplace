<!DOCTYPE html>
<html>
<head>
	<title>MarketPlace - School of Net</title>
</head>
<body>
 <h1>Lista de produtos:</h1>
   
    <ul>
    	{% for produto in produtos %}
     	  
           <hr style="border-color: black;">
             <h4>Nome: {{  produto.nome }}</h4>
             <h4>Preço: {{ produto.preco }} <bold>R$</bold></h4>
             <p>Vendedor: {{ produto.getVendedor() }}</p>
             
             <a href="{{url('produto/ver/')}}{{produto.id}}"><button class="btn btn-success">Visualizar</button></a>
        {% endfor %}
    </ul>

    
{% if auth == true %}
 <h2>Inserir Produto:</h2>
    {{form('produto/cadastrar','method': 'post')}}
        
        <label>Nome do Produto: </label>
        {{text_field("nome","class":"form-control")}}
        <label>Descrição do Produto:</label>
        {{text_area("descricao","class":"form-control")}}
        <label>Preço do Produto:</label>
        {{numeric_field("preco","class":"form-control")}}
        <br>
        {{submit_button("Cadastrar Produto","class":"form-control btn btn-success")}}
        <br>

    {{end_form()}}
    <br>
{% else %}
<h2>Login:</h2>

 {{form('usuario/login','method':'post')}}
    <label>Email:</label>
    {{email_field("email","class":"form-control")}}
    {{password_field("senha","class":"form-control")}}
    {{submit_button("Logar","class":'form-control btn btn-success')}}
 {{end_form()}}

<h2>Cadastro: </h2>
     {{form('usuario/cadastro','method':'post')}}
         
         <label>Nome:</label>
         {{text_field("nome","class":"form-control")}}
         <label>Email:</label>
         {{email_field("email","class":"form-control")}}
         <label>Senha:</label>
         {{password_field("senha","class":"form-control")}}

         {{submit_button("Cadastrar","class":"form-control btn btn-success")}}

     {{end_form()}}
{% endif %}
</body>
</html>