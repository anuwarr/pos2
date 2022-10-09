import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

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
      width: 1275,
      child: SearchBarAnimation(
        textEditingController: textEditingController,
        isOriginalAnimation: false,
        buttonBorderColour: Colors.black45,
        buttonIcon: Icons.search,
        onFieldSubmitted: (String value) {
          debugPrint('onfi');
        },
      ),
    );
  }
}
