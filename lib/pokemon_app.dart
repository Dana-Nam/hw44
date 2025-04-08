import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/pokemon_model.dart';
import 'widgets/pokemon_list.dart';

class PokemonApp extends StatefulWidget {
  const PokemonApp({super.key});

  @override
  State<PokemonApp> createState() => _PokemonAppState();
}

class _PokemonAppState extends State<PokemonApp> {
  List<Pokemon> pokemons = [];
  int currentId = 1;
  final int batchSize = 20;
  bool isLoading = false;

  Future<void> fetchPokemons() async {
    if (isLoading) return;

    setState(() => isLoading = true);

    for (int i = currentId; i < currentId + batchSize; i++) {
      final url = 'https://pokeapi.co/api/v2/pokemon/$i';
      try {
        final response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          final detailData = jsonDecode(response.body);
          final pokemon = Pokemon.fromJson(detailData);
          setState(() => pokemons.add(pokemon));
        }
      } catch (e) {
        debugPrint('Ошибка при загрузке покемона $i: $e');
      }
    }

    setState(() {
      currentId += batchSize;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Список покемонов')),
      body: pokemons.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : PokemonList(
              pokemons: pokemons,
              onLoadMore: fetchPokemons,
            ),
    );
  }
}
