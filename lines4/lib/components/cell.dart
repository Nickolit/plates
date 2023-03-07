import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class Cell extends StatefulWidget {
  const Cell({super.key});

  @override
  State createState() {
    return CellState();
  }
}

class CellState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      height: 52,
      child: Listener(
        onPointerDown: onPointerDown,
        onPointerUp: onPointerUp,
        child: Stack(
          children: [
            Assets.images.cell52x52.image(),
            SizedBox(
              width: 52,
              height: 52,
              child: Assets.images.cell1x1.image(),
            )
          ],
        ),
      ),
    );
  }

  void onPointerDown(PointerDownEvent _) {
    setState(() {
      // normalState = false;
      return;
    });
  }

  void onPointerUp(PointerUpEvent _) {
    setState(() {
      // normalState = true;
      return;
    });
  }
}
