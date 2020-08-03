import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/card_image_list.dart';
import 'package:my_first_flutter_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        GradientBack("Lo más visitado"),
        CardImageList(),
      ],
    );
  }
}