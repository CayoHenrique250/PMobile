class User {
  late String id;
  late String email;
  late String senha;
  late String ocupacao;
  late String nome;

  User({
    required this.id, 
    required this.email, 
    required this.senha,
    required this.ocupacao, 
    required this.nome,
    });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    senha = json['senha'];
ocupacao = json['ocupacao'];
    nome = json['nome'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['senha'] = senha;
    data['ocupacao'] = ocupacao;
    data['nome'] = nome;
    
    return data;
  }

}