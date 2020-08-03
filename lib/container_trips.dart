import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/home_trips.dart';
import 'package:my_first_flutter_app/profile.dart';
import 'package:my_first_flutter_app/search.dart';

class ContainerTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContainerTrips();
  }
}

class _ContainerTrips extends State<ContainerTrips> {

  int i = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    Search(),
    Profile(),
  ];

  void onTapTapped (int index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[i],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: CupertinoTabBar(
          currentIndex: i,
          onTap: onTapTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("person"),
            ),
          ],
        ),
      ),
    );
  }
}
