import 'package:projeto/domain/sobre.dart';

class PacoteDao {
  var listSobre = const [
    Sobre(
        cor: 0xFFFFFFFF,
        cor_titulo: 0xFF1B5E20,
        imagem: "assets/imagens/sustentabilidade.jpg",
        titulo: "Sustentabilidade",
        descricao:
            "Sustentabilidade é a capacidade de cumprir com as necessidades do presente sem comprometer as mesmas das gerações futuras."),
    Sobre(
        cor: 0xFFCCFF90,
        cor_titulo: 0xFF1B5E20,
        imagem: "assets/imagens/meioAmbiente.jpg",
        titulo: "Meio Ambiente",
        descricao:
            "O meio ambiente diz respeito ao conjunto de elementos e processos biológicos, químicos e físicos responsáveis pela vida no planeta Terra."),
    Sobre(
        cor: 0xFFFFFFFF,
        cor_titulo: 0xFF1B5E20,
        imagem: "assets/imagens/tsma.jpg",
        titulo: "Projeto TSMA",
        descricao:
            "Equipe:\n\nAmanda Fernandes;\nCayo Henrique;\nNatally Emanuelle e\nSilmara Nunes."),
  ];

  Future<List<Sobre>> findAll() async {
    await Future.delayed(const Duration(seconds: 3));
    return listSobre;
  }
}
