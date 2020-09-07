import 'package:flutter/material.dart';
import 'package:games_end/components/search_box.dart';
import 'package:games_end/constants.dart';
import 'package:games_end/models/game.model.dart';
import 'package:games_end/screens/details/details_screen.dart';
import 'package:games_end/screens/game/controllers/body.control.dart';
import 'package:shimmer/shimmer.dart';

import 'category_list.dart';
import 'gameCard.dart';

class Body extends StatefulWidget {
  const Body();

  @override
  State<StatefulWidget> createState() {
    return BodyState();
  }
}

class BodyState extends State<Body> {
  BodyControl controller;
  final scrollController = ScrollController();

  @override
  void initState() {
    controller = new BodyControl(5);

    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        controller.loadMore();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onClick: (text) {
            controller.name = text;
            controller.pagination = null;
            controller.data.clear();
            controller.loadMore();
            scrollController.position.moveTo(0, duration: Duration(seconds: 2));
          }),
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
                gamesList()
              ],
            ),
          ),
        ],
      ),
    );
  }

  gamesList() {
    return StreamBuilder(
      stream: controller.stream,
      builder: (BuildContext _context, AsyncSnapshot _snapshot) {
        if (_snapshot.connectionState == ConnectionState.waiting) {
          return ListView.builder(
            itemCount: 10,
            // Important code
            itemBuilder: (context, index) => Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.white,
                child: ProductCard(
                  itemIndex: index,
                  game: new Game(
                      id: 0,
                      background_image:
                          "https://previews.123rf.com/images/kaymosk/kaymosk1804/kaymosk180400006/100130939-error-404-page-not-found-error-with-glitch-effect-on-screen-vector-illustration-for-your-design-.jpg",
                      name: "name"),
                  press: () {},
                )),
          );
        } else if (_snapshot.hasData && _snapshot.data.length != 0) {
          return RefreshIndicator(
            onRefresh: controller.refresh,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                controller: scrollController,
                itemCount: _snapshot.data.length + 1,
                itemBuilder: (BuildContext _context, int index) {
                  if (index < _snapshot.data.length) {
                    return ProductCard(
                      itemIndex: index,
                      game: _snapshot.data[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: _snapshot.data[index],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (controller.hasMore) {
                    return Shimmer.fromColors(
                        baseColor: Colors.grey[300],
                        highlightColor: Colors.white,
                        child: ProductCard(
                          itemIndex: index,
                          game: new Game(
                              id: 0,
                              background_image:
                                  "https://previews.123rf.com/images/kaymosk/kaymosk1804/kaymosk180400006/100130939-error-404-page-not-found-error-with-glitch-effect-on-screen-vector-illustration-for-your-design-.jpg",
                              name: "name"),
                          press: () {},
                        ));
                  } else {
                    return Container();
                  }
                }),
          );
        } else {
          return Center(child: Text("Not found games!"));
        }
      },
    );
  }
}

/* 
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
 */
