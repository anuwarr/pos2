import 'package:flutter/material.dart';

class ItemTable extends StatefulWidget {
  const ItemTable({Key key}) : super(key: key);

  @override
  State<ItemTable> createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1275,
      height: 590,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(9.0)),
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
    );
  }
}
