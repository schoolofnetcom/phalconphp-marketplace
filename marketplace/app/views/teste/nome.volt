<!DOCTYPE html>
<html>
<head>
	<title>Minha Segunda view</title>
</head>
<body>
 

   {% for dado in dados %}
     
     <h2>Nome:{{ dado.nome }}</h2>
      <h3>Idade:{{ dado.idade }}</h3>
      <p>Altura:{{ dado.altura }}</p>
      <p>Trabalho:{{ dado.trabalho}}</p>
   {% endfor %}
  

</body>
</html>