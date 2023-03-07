import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class ScratchPanel extends StatefulWidget {
  const ScratchPanel({Key? key, required this.item}) : super(key: key);

  final String item;

  @override
  State createState() {
    return ScratchPanelState();
  }
}

class ScratchPanelState extends State<ScratchPanel> {
  @override
  Widget build(BuildContext context) {
    return Assets.images.lobby.gradientRaysPinkMd.image();
  }
}
