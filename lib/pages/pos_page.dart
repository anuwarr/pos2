import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.grey,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                AnimSearchBar(
                    width: 400,
                    textController: textController,
                    onSuffixTap: () {
                      setState(() {
                        textController.clear();
                      });
                    })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: [
                Container(
                  width: 1275,
                  height: 350,
                  child: Table(
                      border: TableBorder.all(color: Colors.green, width: 1.5),
                      children: const [
                        TableRow(children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "Mohit",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Text(
                            "25",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ]),
                        TableRow(children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "Mohit",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Text(
                            "25",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ]),
                      ]),
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
