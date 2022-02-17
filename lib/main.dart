import 'package:flutter/material.dart';
import 'package:pokedex/pages/homepage.dart';
import 'package:pokedex/services/pokedexapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokeDex",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
