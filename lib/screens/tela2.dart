import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: const Center(
        child: Text('Tela 2'),
      ),
    );
  }
}
