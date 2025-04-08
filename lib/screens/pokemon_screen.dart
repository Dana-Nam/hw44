import 'package:flutter/material.dart';
import 'package:hw44/models/pokemon_model.dart';

class PokemonScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pokemon.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Image"),
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Text("Text 4"),
          ],
        ),
      ),
    );
  }
}
