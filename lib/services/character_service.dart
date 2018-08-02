import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:starwars/models/character.dart';
import 'package:starwars/utils/api.dart';

class CharacterService {
  static all() async {
    final response = await http.get("${API.BASE_URL}/people");

    if(response.statusCode == 200) {
      Map map = json.decode(response.body);
      return map;
    } else {
      throw new Exception("Failed to load response!");
    }
  }
}