class Pessoa {
  String _nome;
  double _peso;
  int _altura;

  // Construtor
  Pessoa(String nome, double peso, int altura)
    : _nome = nome,
      _peso = peso,
      _altura = altura;

  // Getters e Setters
  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  int getAltura() {
    return _altura;
  }

  void setAltura(int altura) {
    _altura = altura;
  } 

  // Método para calcular IMC
  double calcularIMC() {
    return _peso / (_altura * _altura);
  }
}
