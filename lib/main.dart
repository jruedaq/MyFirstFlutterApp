import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/container_trips.dart';
import 'package:my_first_flutter_app/description_place.dart';
import 'package:my_first_flutter_app/gradient_back.dart';
import 'package:my_first_flutter_app/header_appbar.dart';
import 'package:my_first_flutter_app/home_trips.dart';
import 'review_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContainerTrips(),
    );
  }
}
