import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Serch'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 700),
            child: Container(
                child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: [
                Container(
                  color: Colors.cyan,
                  height: 590,
                  width: 1275,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    width: 300,
                    height: 200,
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: [
                Container(
                    height: 250,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          width: 2.5,
                        )),
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      size: 35,
                      semanticLabel: 'Add Customer',
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    color: Colors.brown,
                    height: 250,
                    width: 935,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    height: 250,
                    width: 400,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    //buil action
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //  buildLeading
    return IconButton(
        onPressed: () {},
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
