import 'package:cesta_brasil/banco_de_dados/banco_de_dados.dart';
import 'package:cesta_brasil/src/models/model_fisica.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  VanessaDbProvider vanessaDb = VanessaDbProvider();

  final vanessa = FisicaModel(
    id: 1,
    email: 'vanessa@cestabrasil',
    endereco: 'Sjc',
    name: 'Vanessa Helena',
    nascimento: 17,
    password: 123,
  );

  await vanessaDb.addItem(vanessa);
  var vanessas = await vanessaDb.fetchVanessa();
  print(vanessas[0].name); //Title 1

  final newvanessa = FisicaModel(
    id: vanessa.id,
    name: "Carlos ",
    email: vanessa.email,
    endereco: '',
    nascimento: 123,
    password: 1234,
  );

  await vanessaDb.updateVanessa(vanessa.id, newvanessa);
  var updatedvanessas = await vanessaDb.fetchVanessa();
  print(updatedvanessas[0].name); //Title 1 changed

  await vanessaDb.deleteVanessa(vanessa.id);
  print(await vanessaDb.fetchVanessa()); //[]
}
