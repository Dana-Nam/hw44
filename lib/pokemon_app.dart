import 'package:flutter/material.dart';

class PokemonApp extends StatefulWidget {
  const PokemonApp({super.key});

  @override
  State<PokemonApp> createState() => _PokemonAppState();
}

class _PokemonAppState extends State<PokemonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Покемоны",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Покемоны")),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("1 value"),
              Text("2 value"),
              Text("3 value"),
              Text("4 value"),
              Text("5 value"),
              ElevatedButton(
                  onPressed: () {}, child: Text("Загрузить следующие")),
            ],
          ),
        ),
      ),
    );
  }
}
