class FisicaModel {
  String email = '';
  String password = '';
  String endereco = '';
  String nascimento = '';
  String name = '';

  FisicaModel({
    required this.email,
    required this.password,
    required this.endereco,
    required this.nascimento,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'endereco': endereco,
      'nascimento': nascimento,
      'password': password,
    };
  }
}
