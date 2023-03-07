import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class MovesSmallPanel extends StatefulWidget {
  const MovesSmallPanel({Key? key}) : super(key: key);

  @override
  State createState() {
    return MovesSmallPanelState();
  }
}

class MovesSmallPanelState extends State<MovesSmallPanel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.images.ui.smallDoublePanel.image(),
        const Positioned(
          left: 40,
          top: 12,
          child: Text(
            'Ходы',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(
          left: 170,
          top: 12,
          width: 40,
          child: Text(
            '60',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
