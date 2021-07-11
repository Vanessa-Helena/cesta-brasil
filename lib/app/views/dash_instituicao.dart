import 'package:flutter/material.dart';

class DashInstituicao extends StatefulWidget {
  @override
  State<DashInstituicao> createState() {
    return DashInstituicaoState();
  }
}

class DashInstituicaoState extends State<DashInstituicao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instituição'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
            child: Text(
              'Lista de Clientes',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
