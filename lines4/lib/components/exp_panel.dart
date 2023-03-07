import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class ExpPanel extends StatefulWidget {
  const ExpPanel({super.key});

  @override
  State createState() {
    return ExpPanelState();
  }
}

class ExpPanelState extends State<ExpPanel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.images.ui.expBar.image(),
        const Positioned(
          left: 15,
          top: 17,
          width: 20,
          child: Text(
            '7',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Positioned(
          left: 35,
          top: 17,
          width: 150,
          child: Text(
            '0 / 1000',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
