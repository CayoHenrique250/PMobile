class User {
  late String email;
  late String senha;
  late String ocupacao;
  late String nome;

  User({
    required this.email,
    required this.senha,
    required this.ocupacao,
    required this.nome,
  });

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    senha = json['senha'];
    ocupacao = json['ocupacao'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = email;
    data['senha'] = senha;
    data['ocupacao'] = ocupacao;
    data['nome'] = nome;

    return data;
  }
}
