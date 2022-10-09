import 'dart:html';

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
            height: 50,
            color: Colors.grey,
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                AnimSearchBar(
                    width: 1275,
                    textController: textController,
                    onSuffixTap: () {
                      setState(() {
                        textController.clear();
                      });
                    }),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Text('LOCATION'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: [
                Container(
                  width: 1275,
                  height: 500,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: DataTable(
                    columns: <DataColumn>[
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'ItemNO',
                            style: TextStyle(fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'DESCRIPTION',
                            style: TextStyle(fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'QTY',
                            style: TextStyle(fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'PRICE',
                            style: TextStyle(fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('1001')),
                          DataCell(Text('Laptop')),
                          DataCell(Text('1')),
                          DataCell(Text('100')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('1001')),
                          DataCell(Text('Laptop')),
                          DataCell(Text('1')),
                          DataCell(Text('100')),
                        ],
                      ),
                    ],
                  ),
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
