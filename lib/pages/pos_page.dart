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
      body: SingleChildScrollView(
        child: Column(
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
                                    crossAxisCount: 2, childAspectRatio: 3 / 2),
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
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                      image: NetworkImage(
                                          'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text('nadey bai'),
                                    Text('Joined: 2020')
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 130,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('LOYALTY CARD NO.'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('BALANCE'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('CREDIT LIMIT'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Container(
                                    height: 130,
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('100'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('MVR 120'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('MVR 300'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
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
      ),
    );
  }
}
