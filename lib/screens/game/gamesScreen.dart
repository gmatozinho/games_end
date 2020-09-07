import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:games_end/constants.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Games'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.dehaze),
          onPressed: () {},
        ),
      ],
    );
  }
}
