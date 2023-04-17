import 'package:flutter/material.dart';

class Pagestateful extends StatefulWidget {
  final String text;
  const Pagestateful(this.text, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PageStatefulState createState() => _PageStatefulState();
}

class _PageStatefulState extends State<Pagestateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stateful"),
        ),
        body: Center(
          child: Text(widget.text),
        ));
  }
}
