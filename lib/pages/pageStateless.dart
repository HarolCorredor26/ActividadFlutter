import 'package:flutter/material.dart';

class PageStateles extends StatelessWidget {
  final String text;
  const PageStateles(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless page"),
      ),
      body: const Center(
        child: Text("Informacion"),
      ),
    );
  }
}
