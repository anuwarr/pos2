import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../dataservice/api_call.dart';
import '../dataservice/item_model.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 1275,
      child: TypeAheadField<ItemModel>(
        textFieldConfiguration: TextFieldConfiguration(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Search',
          ),
        ),
        suggestionsCallback: ItemRepository.getItems,
        onSuggestionSelected: (ItemModel suggestion) {},
        itemBuilder: (context, ItemModel suggestion) {
          final item = suggestion;
          return ListTile(
            title: Text(item.title.toString()),
          );
        },
      ),
    );
  }
}
