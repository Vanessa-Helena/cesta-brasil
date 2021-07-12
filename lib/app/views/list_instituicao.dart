import 'package:cesta_brasil/src/models/model_instituicao.dart';
import 'package:flutter/material.dart';

class InstituicaoListItem extends StatefulWidget {
  late final InstituicaoModel model;

  @override
  _InstituicaoListItemState createState() => _InstituicaoListItemState();
}

class _InstituicaoListItemState extends State<InstituicaoListItem> {
  Widget _body() {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
      title: Text(
        "Olá",
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        "Seja Bem vindo",
        style: TextStyle(color: Colors.white),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: Icon(
          Icons.person,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
      ),
    );
  }
}
