import 'package:projeto/domain/Perfil.dart';

class PerfilDao {
  var listPerfil = const [
    //Avatar(
    //    imagem: 'https://www.promoview.com.br/uploads/images/unnamed%2819%29.png'
    //),
    Perfil(dados: "Aluno", titulo: "NOME"),
    Perfil(dados: "Estudante", titulo: "OCUPAÇÃO"),
    Perfil(dados: "4002", titulo: "ID"),
  ];
  Future<List<Perfil>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return listPerfil;
  }
}
