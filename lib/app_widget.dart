import 'package:cesta_brasil/app/views/cadastro_fisica.dart';
import 'package:cesta_brasil/app/views/cadastro_institucional.dart';
import 'package:flutter/material.dart';

import 'app/views/dash_cliente.dart';
import 'app/views/dash_instituicao.dart';
import 'app/views/home_page.dart';
import 'app/views/list_instituicao.dart';
import 'app/views/login_page.dart';

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
        '/dash_cliente': (context) => DashCliente(),
        '/dash_instituicao': (context) => DashInstituicao(),
        '/list_instituicao': (context) => InstituicaoListItem(),
      },
    );
  }
}
