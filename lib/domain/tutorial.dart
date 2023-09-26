class TutorialWidgets {
  late String video;
  late String titulo;
  late String texto;
  late String titulo2;

  TutorialWidgets({
    required this.video,
    required this.titulo,
    required this.texto,
    required this.titulo2,
  });

  TutorialWidgets.fromJson(Map<String, dynamic> json) {
    video = json['VIDEO'];
    titulo = json['TITULO'];
    texto = json['TEXTO'];
    titulo2 = json['TITULO2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['VIDEO'] = this.video;
    data['TITULO'] = this.titulo;
    data['TEXTO'] = this.texto;
    data['TITULO2'] = this.titulo2;

    return data;
  }
}

class TutorialWidgetsTextImg {
  late String texto;
  late String imagem;

  TutorialWidgetsTextImg({
    required this.texto,
    required this.imagem,
  });

  TutorialWidgetsTextImg.fromJson(Map<String, dynamic> json) {
    texto = json['TEXTO'];
    imagem = json['IMAGEM'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['TEXTO'] = this.texto;
    data['IMAGEM'] = this.imagem;

    return data;
  }
}
