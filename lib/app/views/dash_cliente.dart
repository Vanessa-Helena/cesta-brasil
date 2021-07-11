import 'package:flutter/material.dart';

class DashCliente extends StatefulWidget {
  @override
  State<DashCliente> createState() {
    return DashClienteState();
  }
}

class DashClienteState extends State<DashCliente> {
  Widget _body() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/list_instituicao');
            },
            child: Container(
              height: 100,
              width: 100,
              child: Text(
                'Quero Ajudar',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: 60,
            width: 60,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/list_instituicao');
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              child: Text(
                'Quero ser Ajudado',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cliente'),
        ),
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
        ));
  }
}
