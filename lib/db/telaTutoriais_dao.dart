import 'package:projeto/domain/tutoriais.dart';
import 'package:projeto/telasTutoriais/Tutorial1.dart';
import 'package:projeto/telasTutoriais/Tutorial2.dart';

class PacoteDao {
  var listTutoriais = const [
    Tutoriais(
      cor: 0xFFFFFFFF,
      cor_titulo: 0xFF1B5E20,
      imagem: "assets/imagens/tartarugaPet.jpg",
      titulo: "Tartarugas PET",
      descricao: "Tartarugas feitas com fundo de garrafa PET e EVA.",
      proxima: Tutorial1(),
    ),
    Tutoriais(
      cor: 0xFFCCFF90,
      cor_titulo: 0xFF1B5E20,
      imagem: "assets/imagens/porcoEspinho.jpg",
      titulo: "Porco espinho de revista",
      descricao: "Porco espinho de papelão e recortes de revistas.",
      proxima: Tutorial2(),
    ),
  ];

  Future<List<Tutoriais>> findAll() async {
    await Future.delayed(const Duration(seconds: 3));
    return listTutoriais;
  }
}
