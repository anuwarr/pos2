import 'package:flutter/material.dart';
import 'package:url_navigation_web/const/search_bar.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.red,
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Center(child: SearchBar()),
                Expanded(
                  child: Container(
                    child: Text('Location'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: [
                //Item table
                Container(
                  width: 1275,
                  height: 590,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9.0)),
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
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: SizedBox(
                      child: GridView.builder(
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.red,
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10),
            child: Row(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.26,
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
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: 935,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.26,
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
