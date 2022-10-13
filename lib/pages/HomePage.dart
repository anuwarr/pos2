import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:url_navigation_web/const/search_bar.dart';

import '../const/stats.dart';

class DashBorad extends StatefulWidget {
  @override
  State<DashBorad> createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> {
  final datTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 25.0),
              child: Text(
                'Welcome Back: Nadey Bi',
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 25.0),
              child: Text(datTime.format(AmericanDateFormats.dayOfWeek)),
            ),
            Container(
                margin: EdgeInsets.only(top: 25.0, left: 30.0),
                child: Row(
                  children: [
                    Stats(),
                    SizedBox(
                      width: 20.0,
                    ),
                    Stats()
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 25.0, left: 30.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: const []),
            ),
          ],
        ),
      ),
    );
  }
}
