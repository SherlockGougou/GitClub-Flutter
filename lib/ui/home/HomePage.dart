import 'package:flutter/material.dart';
import 'package:gitclub/ui/home/HomeListPage.dart';
import 'package:gitclub/ui/MyApp.dart';
import 'package:gitclub/ui/search/SearchPage.dart';
import 'package:gitclub/widget/FloatButton.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "GitClub",
          style: new TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () async {
                GitClubApp.materialApp.navigatorKey.currentState.push(new MaterialPageRoute(
                    builder: (context) => new SearchPage(null)));
//                  Navigator.pushNamed(context, "/search");
              })
        ],
      ),
      body: new IndexedStack(
        children: <Widget>[new HomeListPage()],
        index: 0,
      ),
      floatingActionButton: new FancyFab(null, null),
    );
  }
}


