import 'package:flutter/material.dart';
import 'pokemon_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PokemonApp(),
    );
  }
}
