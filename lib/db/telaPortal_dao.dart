import 'package:projeto/domain/Portal.dart';

class TelaPortalDao {
  var listPortal = const [
    PortalCard(imagem: 'assets/imagens/Planeta.jpg'),
    Portal(
      url: 'https://brasil.un.org/pt-br',
      titulo: "ONU: Nações Unidas Brasil",
    ),
    Portal(
      url:
          'https://noticias.portaldaindustria.com.br/listas/5-projetos-sustentaveis-para-preservar-o-meio-ambiente/',
      titulo: "5 Projetos Sustentáveis",
    ),
    Portal(
      url: 'http://www.meioambiente.mg.gov.br/premioboaspraticas',
      titulo: "Prêmio de boas práticas Ambientais",
    ),
    Portal(
      url:
          'https://premioconscienciaambiental.com/#:~:text=As%20inscri%C3%A7%C3%B5es%20do%20Pr%C3%AAmio%20Consci%C3%AAncia,site%20www.premioconscienciaambiental.com.',
      titulo: "Prêmio Consciência Ambiental",
    ),
  ];
  Future<List<Object>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return listPortal;
  }
}
