import 'package:flutter/material.dart';

class DashCliente extends StatefulWidget {
  @override
  State<DashCliente> createState() {
    return DashClienteState();
  }
}

class DashClienteState extends State<DashCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cliente'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
            child: Text(
              'Quero Ajudar',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 60,
            width: 60,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
            child: Text(
              'Quero ser Ajudado',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
