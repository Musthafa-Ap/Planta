import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PopularItems.dart';
import 'SpecialItems.dart';

class HomeDetailesPage extends StatefulWidget {
  @override
  _HomeDetailesPageState createState() => _HomeDetailesPageState();
}

class _HomeDetailesPageState extends State<HomeDetailesPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              PopularItems(),
              Divider(
                thickness: 1,
              ),
              SpecialItems(),
            ],
          ),
        ),
      )
    );
  }
}
