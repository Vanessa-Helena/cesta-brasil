import 'package:flutter/material.dart';

import '../../app_widget.dart';

main() {
  runApp(
    AppWidget(),
  );
}








/*void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cesta Brasil',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purpleAccent,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Cesta Brasil'),
                  Icon(
                    Icons.group,
                    color: Colors.purple,
                  )
                ]),
          ),
          body: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.pink.shade400, Colors.white10])),
            //color: Colors.purpleAccent[400],
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Texto',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Texto',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    print("Nada ainda");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
              )
            ]),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.purpleAccent,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.purple,
                    size: 35,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 35,
                  )
                ],
              ),
            ),
          ))));
}*/
