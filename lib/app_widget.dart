import 'package:cesta_brasil/cadastro_fisica.dart';
import 'package:cesta_brasil/cadastro_institucional.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/cadastroFisica': (context) => CadastroPage(),
        '/cadastroJuridica': (context) => CadastroPageJuridica(),
      },
    );
  }
}