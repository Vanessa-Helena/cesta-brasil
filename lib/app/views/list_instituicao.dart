import 'package:cesta_brasil/src/models/model_instituicao.dart';
import 'package:flutter/material.dart';

class InstituicaoListItem extends StatefulWidget {
  late final InstituicaoModel model;

  @override
  _InstituicaoListItemState createState() => _InstituicaoListItemState();
}

class _InstituicaoListItemState extends State<InstituicaoListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
        title: Text("Olá" /*widget.model.name*/),
        subtitle: Text("Seja Bem vindo" /*widget.model.name*/),
        trailing: TextButton(
          onPressed: () {},
          child: Icon(
            Icons.person,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
