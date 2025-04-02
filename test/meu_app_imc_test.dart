import 'package:meu_app_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Deve criar uma pessoa corretamente', () {
      var pessoa = Pessoa("João", 70.5, 175);

      expect(pessoa.getNome(), equals("João"));
      expect(pessoa.getPeso(), equals(70.5));
      expect(pessoa.getAltura(), equals(175));
    });

    test('Deve permitir alterar os valores corretamente', () {
      var pessoa = Pessoa("Maria", 60.0, 165);

      pessoa.setNome("Ana");
      pessoa.setPeso(65.0);
      pessoa.setAltura(170);

      expect(pessoa.getNome(), equals("Ana"));
      expect(pessoa.getPeso(), equals(65.0));
      expect(pessoa.getAltura(), equals(170));
    });

    test('Deve calcular o IMC corretamente', () {
      var pessoa = Pessoa("Carlos", 80, 180);
      double imcCalculado = pessoa.getPeso() / ((pessoa.getAltura() / 100) * (pessoa.getAltura() / 100));

      expect(imcCalculado.toStringAsFixed(2), equals("24.69"));
    });
  });
}
