import 'package:cesta_brasil/src/models/model_instituicao.dart';
import 'package:flutter/material.dart';

class InstituicaoListItem extends StatelessWidget {
  final InstituicaoModel? model;

  InstituicaoListItem({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
      title: Text(model!.name),
      subtitle: Text(model!.email),
      trailing: TextButton(
        onPressed: () {},
        child: Icon(
          Icons.person,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
