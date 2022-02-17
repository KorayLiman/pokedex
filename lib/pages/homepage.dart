import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemonmodel.dart';
import 'package:pokedex/services/pokedexapi.dart';
import 'package:pokedex/widgets/apptitle.dart';
import 'package:pokedex/widgets/pokemonlistwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
