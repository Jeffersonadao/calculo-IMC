import 'dart:io';

import 'package:meu_app_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  // Obtendo os dados do usuário
  String nome = obterNome();
  double peso = obterPeso();
  int altura = obterAltura();

  // Criando um objeto Pessoa
  Pessoa pessoa = Pessoa(nome, peso, altura);

  // Calculando IMC
  double imc = pessoa.calcularIMC();

  // Exibir os valores digitados no final
  print("\n--- Resumo dos Dados Digitados ---");
  print("Nome: ${pessoa.getNome()}");
  print("Peso: ${pessoa.getPeso()} kg");
  print("Altura: ${pessoa.getAltura()} cm");
  print("IMC: ${imc.toStringAsFixed(2)}");
}

// Receber o nome digitado
String obterNome() {
  while (true) {
    stdout.write("Qual é o seu nome? ");
    String entrada = stdin.readLineSync()?.trim() ?? "";

    if (RegExp(r'^[A-Za-zÀ-ÖØ-öø-ÿ ]+$').hasMatch(entrada) && entrada.isNotEmpty) {
      return entrada;
    }
    print("Nome inválido. Digite apenas letras e espaços.");
  }
}

// Receber o peso digitado
double obterPeso() {
  while (true) {
    stdout.write("Qual é o seu peso? (Ex: 85.5) ");
    String entrada = stdin.readLineSync()?.trim().replaceAll(",", ".") ?? "";

    try {
      return double.parse(entrada);
    } catch (e) {
      print("Peso inválido. Digite apenas números, usando ponto ou vírgula para separar os decimais.");
    }
  }
}

// Receber a altura digitada
int obterAltura() {
  while (true) {
    stdout.write("Qual é a sua altura em cm? (Ex: 185) ");
    String entrada = stdin.readLineSync()?.trim() ?? "";

    if (RegExp(r'^[0-9]+$').hasMatch(entrada)) {
      return int.parse(entrada);
    }
    print("Altura inválida. Digite um número inteiro em centímetros, sem pontos ou vírgulas.");
  }
}