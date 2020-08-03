import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("images/profile.jpg", "Juan David Rueda", 5, 8,
            "comentario de prueba 1"),
        Review("images/background.jpg", "Usuario", 50, 10,
            "comentario de prueba 2"),
      ],
    );
  }
}
