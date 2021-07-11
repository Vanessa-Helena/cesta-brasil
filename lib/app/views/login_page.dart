import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

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
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/avatar.png'),
              ),
              Container(
                height: 5,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 20,
                    bottom: 12,
                  ),
                  child: Column(children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'E-mail', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        if (password != '' || email != '') {
                          Navigator.of(context).pushReplacementNamed('/home');
                          print('ok');
                        } else {
                          print('Erro');
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            'Logar',
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ]),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (password == '' && email == '') {
                    Navigator.of(context)
                        .pushReplacementNamed('/cadastroFisica');
                    print('ok');
                  } else {
                    print('Erro');
                  }
                },
                child: Container(
                    width: 330,
                    child: Text(
                      'Cadastrar Pessoa',
                      textAlign: TextAlign.center,
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  if (password == '' && email == '') {
                    Navigator.of(context)
                        .pushReplacementNamed('/cadastroJuridica');
                    print('ok');
                  } else {
                    print('Erro');
                  }
                },
                child: Container(
                    width: 330,
                    child: Text(
                      'Cadastrar Empresa',
                      textAlign: TextAlign.center,
                    )),
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
