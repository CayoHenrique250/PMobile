class PortalCard {
  late String imagem;

  PortalCard({
    required this.imagem,
  });

  PortalCard.fromJson(Map<String, dynamic> json) {
    imagem = json['IMAGEM'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['IMAGEM'] = this.imagem;

    return data;
  }
}

class Portal {
  late String url;
  late String titulo;

  Portal({required this.url, required this.titulo});

  Portal.fromJson(Map<String, dynamic> json) {
    url = json['URL'];
    titulo = json['TITULO'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['URL'] = this.url;
    data['TITULO'] = this.titulo;

    return data;
  }
}
