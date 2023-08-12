import 'package:projeto/domain/tutorial.dart';

class Tutorial2Dao {
  var listTutorial2 = const [
    TutorialVideo(video: 'assets/videos/video.mp4'),
    TutorialTitulo(titulo: 'Materiais:'),
    TutorialTexto(
        texto:
            '• Papelão; \n• Revista; \n• Tesoura sem ponta; \n• Lápis; \n• Cola branca; \n• Caneta permanente.'),
    TutorialTitulo(titulo: 'Como fazer?'),
    TutorialTexto(
        texto:
            '1- Com o lápis desenhe o molde do corpo do porco-espinho no papelão e recorte com a tesoura;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial2/imagem1.png'),
    TutorialTexto(
        texto:
            '2- Pegue a revista e recorte vários pedacinhos em formato de triângulos;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial2/imagem2.png'),
    TutorialTexto(
        texto:
            '3- Pegue a cola e cole os pedacinhos de papel no molde do porco-espinho, deixando só a parte do rosto livre, colocando as pontas dos triângulos para fora para parecerem espinhos;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial2/imagem3.png'),
    TutorialTexto(
        texto:
            '4- Enquanto espera secar, desenhe com o lápis piloto o rosto de porco-espinho;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial2/imagem4.png'),
    TutorialTexto(
        texto: '5- E está pronto! Agora é só deixar a criançada se divertir!'),
    TutorialImagem(imagem: 'assets/imagens/tutorial2/imagem5.png')
  ];
  Future<List<Object>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return listTutorial2;
  }
}
