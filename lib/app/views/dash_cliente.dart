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
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/list_instituicao');
              },
              child: Container(
                alignment: Alignment.center,
                height: 130,
                width: 130,
                child: Text(
                  'Quero Ajudar',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/list_instituicao');
              },
              child: Container(
                alignment: Alignment.center,
                height: 130,
                width: 130,
                child: Text(
                  'Preciso de Ajudar',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
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
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    'https://media-exp1.licdn.com/dms/image/C4D03AQG7iFqvhieavQ/profile-displayphoto-shrink_800_800/0/1607963984671?e=1631750400&v=beta&t=iewBeYkUbrZ6UmNJlmJCz-RGAPXtAXm9X_DqOFEcdN4',
                  ),
                ),
                accountName: Text('Vanessa Helena'),
                accountEmail: Text(
                  'vanessa@cestabrasil.com.br',
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('Tela de Inicio'),
                onTap: () {
                  Navigator.of(context).restorablePushReplacementNamed('/');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Logout'),
                subtitle: Text('Finalizar Sessão'),
                onTap: () {
                  Navigator.of(context).restorablePushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
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
