import 'dart:math';

class Pessoa {
  String nome = "";
  int idade = 0;
  double altura = 0.0;

  int get IDADE => idade;

  set IDADE(int numeroIdade) {
    if (numeroIdade >= 0) {
      idade = numeroIdade;
    } else {
      print("A idade deve ser maoir ou igual a zero");
    }
  }

  String get NOME => nome;

  set NOME(String nomePessoa) {
    nome = nomePessoa;
  }

  double get ALTURA => altura;

  set ALTURA(double alturaPessoa) {
    altura = alturaPessoa;
  }
}

void main() {
  Random random = Random();

  final pessoa = Pessoa();

  pessoa.nome = "João";
  pessoa.idade = random.nextInt(99) + 1;
  pessoa.altura = (random.nextDouble() * 1.3) + 1;

  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}
