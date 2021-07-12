import 'package:cesta_brasil/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({Key? key}) : super(key: key);

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserRepository>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Configutações'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            ListTile(
              title: Text('Usuario'),
              subtitle: Text(user.user),
            ),
          ],
        ),
      ),
    );
  }
}
