import 'dart:convert';
import 'package:http/http.dart' as http;

import 'foods.dart';

class FoodsApi {
  static Future<List<Foods>> getRecipe() async {
    var uri = Uri.https('api.spoonacular.com', '/recipes/complexSearch',
        {"query": "pizza", "apiKey": "cd5ef5aeeafb47c38fea1e7fb801cf0c"});

    final response = await http.get(uri, headers: {
      "Content-Type": "application/json",
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i);
    }

    return Foods.recipesFromSnapshot(_temp);
  }
}
