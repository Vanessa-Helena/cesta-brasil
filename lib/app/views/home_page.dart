import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
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
          title: Text('Home'),
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
            Center(
                child: GestureDetector(
              child: Text(
                'Cesta Brasil',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            )),
            Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ));
  }
}
