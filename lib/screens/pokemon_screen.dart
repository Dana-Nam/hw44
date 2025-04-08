import 'package:flutter/material.dart';
import '../models/pokemon_model.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                pokemon.imageUrl,
                height: 200,
              ),
            ),
            SizedBox(height: 16),
            Text('Тип: ${pokemon.type}',
                style: Theme.of(context).textTheme.titleLarge),
            Text('Рост: ${pokemon.height}',
                style: Theme.of(context).textTheme.bodyLarge),
            Text('Вес: ${pokemon.weight}',
                style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
