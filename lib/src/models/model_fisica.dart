class FisicaModel {
  final int id;
  final String email;
  final int password;
  final String endereco;
  final int nascimento;
  final String name;

  FisicaModel({
    required this.id,
    required this.email,
    required this.password,
    required this.endereco,
    required this.nascimento,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'endereco': endereco,
      'nascimento': nascimento,
      'password': password,
    };
  }
}
