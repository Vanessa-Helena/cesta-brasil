class InstituicaoModel {
  String email = '';
  String password = '';
  String endereco = '';
  String name = '';
  String cnpj = '';

  InstituicaoModel({
    required this.email,
    required this.password,
    required this.endereco,
    required this.cnpj,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'endereco': endereco,
      'nascimento': cnpj,
      'password': password,
    };
  }

  // static Future<List<InstituicaoModel>> fromMap(Map<String, dynamic> map) {
  // }

}
