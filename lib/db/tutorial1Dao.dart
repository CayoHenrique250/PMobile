import 'package:projeto/domain/tutorial.dart';

class Tutorial1Dao {
  var listTutorial1 = const [
    TutorialVideo(video: 'assets/videos/video.mp4'),
    TutorialTitulo(titulo: 'Materiais:'),
    TutorialTexto(
        texto:
            '• Garrafa pet de 2 litros; \n • Emborrachado verde; \n • Caneta permanente (preto de preferência); \n • Pistola de cola quente; \n • Tesoura sem ponta; \n • Lápis; \n • Fita de cetim (opcional).'),
    TutorialTitulo(titulo: 'Como fazer?'),
    TutorialTexto(
        texto:
            '1- Com o lápis faça um molde do corpo da tartaruga no emborrachado e recorte com a tesoura;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial1/imagem1.png'),
    TutorialTexto(
        texto:
            '2- Corte com a tesoura a parte de baixo da garrafa onde está marcado com uma linha;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial1/imagem2.png'),
    TutorialTexto(
        texto:
            '3- Desenhe com a caneta permanente o rosto e as patinhas da tartaruga;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial1/imagem3.png'),
    TutorialTexto(
        texto:
            '4- Com a cola quente, cole a parte recortada da garrafa PET no corpo de EVA da tartaruga;'),
    TutorialImagem(imagem: 'assets/imagens/tutorial1/imagem4.png'),
    TutorialTexto(
        texto:
            '5- Faça um laço com a fita colorida e decore a tartaruga (opcional);'),
    TutorialImagem(imagem: 'assets/imagens/tutorial1/imagem5.png'),
    TutorialTexto(
        texto: '6- E está pronto! Agora é só deixar a criançada se divertir!'),
    TutorialImagem(imagem: 'assets/imagens/tutorial1/imagem6.png')
  ];
  Future<List<Object>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return listTutorial1;
  }
}
