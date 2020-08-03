import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Guatapé", 4, "Maecenas egestas interdum dui, ac suscipit lectus pretium et. Integer at placerat dolor. Etiam dignissim sit amet ligula nec vestibulum. Curabitur fermentum pharetra dui, sit amet feugiat nulla viverra quis. Integer id congue tellus. Nam vel congue libero. Integer vitae condimentum lacus, sed pulvinar enim. Quisque erat odio, interdum tincidunt felis et, gravida condimentum nunc. Duis ac augue ipsum. Ut et rutrum dolor.\nIn finibus leo vitae aliquam semper. Curabitur in luctus mi, quis tempor risus. Cras pulvinar, ante varius bibendum iaculis, dolor arcu euismod mauris, nec aliquam eros est sed orci. Curabitur feugiat arcu in orci bibendum mollis. Nulla scelerisque euismod fringilla. Sed auctor mi justo, eu aliquam lorem luctus at. Proin facilisis accumsan rutrum. Maecenas id vehicula tortor. Etiam sit amet lacus laoreet, aliquam justo a, euismod nisi. Nulla cursus nulla in est placerat elementum."),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}