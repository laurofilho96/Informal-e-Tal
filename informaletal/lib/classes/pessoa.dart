import 'Profissao.dart';
import 'package:cep/cep.dart';

class Pessoa {
  // Dados do trabalhador;
  String _nomeCompleto;
  int _idade;
  String _email;
  int telefone;

  String _senha;

  var _profissaoList = List<Profissao>.filled(3, null);

  String _cep;

  //Gets e Sets
  String get nomeCompleto => _nomeCompleto;

  set nomeCompleto(String nomeCompleto) {
    _nomeCompleto = nomeCompleto;
  }

  int get idade => _idade;

  set idade(int idade) {
    _idade = idade;
  }

  String get email => _email;

  set email(String email) {
    _email = email;
  }

  String get senha => _senha;

  set senha(String senha) {
    _senha = senha;
  }

  get profissaoList => _profissaoList;

  set profissaoList(profissaoList) {
    _profissaoList = profissaoList;
  }

  String get cep => _cep;

  set cep(String cep) {
    _cep = cep;
  }

  Pessoa pessoa = new Pessoa();
}
