import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/tela2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red, secondaryHeaderColor: Colors.brown[300]),
      // home: const Home(),
      routes: {
        '/': (context) => const Home(),
        '/tela2': (context) => const Tela2(),
      },
    );
  }
}
