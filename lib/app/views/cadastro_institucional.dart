import 'package:flutter/material.dart';

class CadastroPageJuridica extends StatefulWidget {
  const CadastroPageJuridica({Key? key}) : super(key: key);

  @override
  _CadastroPageJuridicaState createState() => _CadastroPageJuridicaState();
}

class _CadastroPageJuridicaState extends State<CadastroPageJuridica> {
  String email = '';
  String password = '';
  String endereco = '';
  String name = '';
  String cnpj = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 20,
                    bottom: 12,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          name = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Nome da Empresa',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'E-mail Institucional',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          endereco = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Endereço Completo',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Cadastre sua Senha',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          if (password != '' || email != '' || name != '') {
                            Navigator.of(context)
                                .pushReplacementNamed('/dash_instituicao');
                            print('ok');
                          } else {
                            print('Erro');
                          }
                        },
                        child: Text(
                          'Cadastrar Empresa',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/fundo1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
