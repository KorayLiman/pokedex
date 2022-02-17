import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemonmodel.dart';
import 'package:pokedex/services/pokedexapi.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  
  late final Future<List<Pokemonmodel>> _PokemonList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _PokemonList = PokeApi.GetPokemonData();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemonmodel>>(
      future: _PokemonList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Pokemonmodel> _MyList = snapshot.data!;
          return ListView.builder(
              itemCount: _MyList.length,
              itemBuilder: (context, index) {
                var CurrentPokemon = _MyList[index];
                return ListTile(
                    title: Text(
                  CurrentPokemon.name.toString(),
                ));
              });
        } else if (snapshot.hasError) {
          return Center(
            child: Text("error"),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
