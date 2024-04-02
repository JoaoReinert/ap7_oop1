class Retangulo {
  late final double largura;
  late final double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    return altura * largura;
  }
}

void main() {
  double larguraRetangulo = 7.0;
  double alturaRetangulo = 2.0;

  var retanguloInteiro = Retangulo(larguraRetangulo, alturaRetangulo);

  double area = retanguloInteiro.calcularArea();

  print("area do retangulo: $area");
}
