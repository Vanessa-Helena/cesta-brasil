import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  child: Text('Logar'),
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
                  child: Text('Cadastrar'),
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
                  child: Text('Cadastrar Empresa'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
