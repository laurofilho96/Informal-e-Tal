import 'Ramo.dart';
import 'package:cep/cep.dart';

class Empresa {

  // Dados da Empresa;
  String _nomeCompleto;
  String _email;
  int _telefone;

  String _senha;

  Ramo _ramo;

  String _cep;

  //Gets e Sets
  String get nomeCompleto => _nomeCompleto;

  set nomeCompleto(String nomeCompleto) {
    _nomeCompleto = nomeCompleto;
  }

  String get email => _email;

  set email(String email) {
    _email = email;
  }

  int get telefone => _telefone;

  set telefone(int telefone) {
    _telefone = telefone;
  }

  String get senha => _senha;

  set senha(String senha) {
    _senha = senha;
  }

  Ramo get ramo => _ramo;

  set ramo(Ramo ramo) {
    _ramo = ramo;
  }

  String get cep => _cep;

  set cep(String cep) {
    _cep = cep;
  }
}