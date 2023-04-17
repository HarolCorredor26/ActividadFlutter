import 'package:flutter/material.dart';
import 'pages/pageStatefull.dart';
import 'pages/pageStateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material app',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  ElevatedButton buildRaisedButton(
      {required VoidCallback onPressed, required Widget child}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textocontroller = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacion'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: textocontroller,
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Color.fromRGBO(300, 300, 300, 0),
                filled: true,
                hintText: "Ingrese Informacion",
              ),
            ),
          ),
          buildRaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageStateles(
                    textocontroller.text,
                    key: null,
                  ),
                ),
              );
            },
            child: const Text("Enviar"),
          ),
          buildRaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pagestateful(
                    textocontroller.text,
                    key: null,
                  ),
                ),
              );
            },
            child: const Text("Enviar"),
          ),
        ],
      ),
    );
  }
}
