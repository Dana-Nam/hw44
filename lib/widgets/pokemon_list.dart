import 'package:flutter/material.dart';
import 'package:hw44/models/pokemon_model.dart';
import 'package:hw44/screens/pokemon_screen.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;

  const PokemonList({super.key, required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pokemons.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemBuilder: (ctx, i) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonScreen(pokemon: pokemons[i]),
                    ));
              },
            ));
  }
}
