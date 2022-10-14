import 'dart:convert';

import 'package:http/http.dart';

import 'item_model.dart';

class ItemRepository {
  static Future<List<ItemModel>> getItems(String query) async {
    String endpoint = 'http://localhost:3000/items';
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);

      return result.map((e) => ItemModel.fromJson(e)).where((item) {
        final nameLower = item.title.toLowerCase();
        final queryLower = query.toLowerCase();

        return nameLower.contains(queryLower);
      }).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
