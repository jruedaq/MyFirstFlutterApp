import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Indicaste que te gusta está imágen"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Favorite",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
