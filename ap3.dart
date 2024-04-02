void main() {
  List<String> produtos = ["ovo", "feijão", "arroz", "beterraba", "salsicha"];
  List<double> precos = [10.0, 9.0, 60.0, 7.0, 21.0];
  double descontoTotal = 3.0;

  Map<String, double> produtosPrecos = {};

  for (int i = 0; i < produtos.length; i++) {
    produtosPrecos[produtos[i]] = precos[i];
  }

  print("lista original");
  produtosPrecos.forEach((produtos, precos) {
    print("Produto: $produtos ----> $precos");
  });

  print("\nlista com desconto");
  produtosPrecos.forEach((produtos, precos) {
    Produtos nomes = Produtos(nomes: produtos, precos: precos);
    double precoComDesconto = nomes.desconto(descontoTotal);
    print("Produto: $produtos ----> ${precoComDesconto}");
  });
}

class Produtos {
  String nomes = "";
  double precos = 0.0;

    Produtos({required this.nomes, required this.precos});

  double desconto(double desconto) {
    return precos - (precos * (desconto / 100));
  }
}
