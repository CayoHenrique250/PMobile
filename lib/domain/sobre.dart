class Sobre {
  late String imagem;
  late String titulo;
  late String descricao;
  late String cor;
  late String cor_titulo;

  Sobre({
    required this.imagem,
    required this.titulo,
    required this.descricao,
    required this.cor,
    required this.cor_titulo,
  });

  Sobre.fromJson(Map<String, dynamic> json) {
    imagem = json['imagem'];
    titulo = json['titulo'];
    descricao = json['descricao'];
    cor = json['cor'];
    cor_titulo = json['cor_titulo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['imagem'] = this.imagem;
    data['titulo'] = this.titulo;
    data['descricao'] = this.descricao;
    data['cor'] = this.cor;
    data['cor_titulo'] = this.cor_titulo;

    return data;
  }
}
