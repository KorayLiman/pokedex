import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topLeft, child: Text("Pokedex")),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            "assets/images/pokeball.png",
            width: 100,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
