import 'dart:convert';
import 'package:http/http.dart' as http;

class PokeApiService {
  final String baseUrl = 'https://pokeapi.co/api/v2';

  Future<Map<String, dynamic>> fetchPokemon(String name) async {
    final response = await http.get(Uri.parse('$baseUrl/pokemon/$name'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load Pokemon');
    }
  }

  Future<List<dynamic>> fetchPokemonList(int limit, int offset) async {
    final response = await http.get(Uri.parse('$baseUrl/pokemon?limit=$limit&offset=$offset'));

    if (response.statusCode == 200) {
      return json.decode(response.body)['results'];
    } else {
      throw Exception('Failed to load Pokemon list');
    }
  }
}