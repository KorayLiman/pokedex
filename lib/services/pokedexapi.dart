import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedex/model/pokemonmodel.dart';

class PokeApi {
  static const String _Url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  static Future<List<Pokemonmodel>> GetPokemonData() async {
    List<Pokemonmodel> _List = [];

    var result = await Dio().get(_Url);
    var PokeList = jsonDecode(result.data)["pokemon"];
    if (PokeList is List) {
      _List = PokeList.map((e) => Pokemonmodel.fromJson(e)).toList();
    }
    debugPrint(_List.length.toString());

    return _List;
  }
}
