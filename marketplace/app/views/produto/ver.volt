<!DOCTYPE html>
<html>
<head>
	<title>Produto</title>
</head>
<body>

 {% for aux in produto %}
   <h1>{{ aux.nome }}</h1>
   <h4>Descrição:</h4>
   <h4>{{ aux.descricao }}</h4>
   <h4> <bold>Preço:</bold>{{aux.preco}}  </h4>
   <h4>Vendedor: {{aux.getVendedor()}}</h4>
   <a href="{{url('produto/comprar/')}}{{aux.id}}"><button class="btn btn-success">Comprar Produto</button></a>
 {% endfor %}

</body>
</html>