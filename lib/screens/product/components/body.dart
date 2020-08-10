import 'package:flutter/material.dart';
import 'package:games_end/components/search_box.dart';
import 'package:games_end/constants.dart';
import 'package:games_end/models/game.dart';
import 'package:games_end/screens/details/details_screen.dart';
import 'package:games_end/services/games.dart';

import 'category_list.dart';
import 'product_card.dart';

class Body extends StatelessWidget {
  Future<List<Game>> futureListSection;

  Future<List<Game>> getSectionList() {
    return GamesService.list();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          //CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                productList()
              ],
            ),
          ),
        ],
      ),
    );
  }

  productList() {
    return FutureBuilder<List<Game>>(
      future: getSectionList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(
            child: CircularProgressIndicator(),
          );
        else if (snapshot.hasData)
          return ListView.builder(
            // here we use our demo procuts list
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) => ProductCard(
              itemIndex: index,
              product: snapshot.data[index],
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: snapshot.data[index],
                    ),
                  ),
                );
              },
            ),
          );
        else
          return Text("broken");
      },
    );
  }
}
