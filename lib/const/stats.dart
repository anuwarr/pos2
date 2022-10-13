import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            Text('Today Sales'),
            SizedBox(
              height: 20.0,
            ),
            Text('MVR 200,000')
          ],
        )
      ],
    );
  }
}
