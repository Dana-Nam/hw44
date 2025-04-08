import 'package:flutter/material.dart';
import '../models/pokemon_model.dart';
import '../screens/pokemon_screen.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;
  final VoidCallback onLoadMore;

  const PokemonList({
    super.key,
    required this.pokemons,
    required this.onLoadMore,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pokemons.length + 1,
      itemBuilder: (context, index) {
        if (index == pokemons.length) {
          return Center(
            child: ElevatedButton(
              onPressed: onLoadMore,
              child: Text('Загрузить ещё'),
            ),
          );
        }
        final pokemon = pokemons[index];
        return ListTile(
          leading: Image.network(pokemon.imageUrl, width: 60, height: 60),
          title: Text('${index + 1}. ${pokemon.name}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PokemonScreen(pokemon: pokemon),
              ),
            );
          },
        );
      },
    );
  }
}
