import 'package:flutter/material.dart';
import 'package:linez4/addons/tutorial_addon.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../../domain/level_settings.dart';
import '../blue_button.dart';

class MovesRightPanel extends StatefulWidget {
  const MovesRightPanel({Key? key, required this.level, required this.settings})
      : super(key: key);

  final int level;
  final LevelSettings settings;

  @override
  State createState() {
    return MovesRightPanelState();
  }
}

class MovesRightPanelState extends State<MovesRightPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.ui.gameRightBarBg.provider(),
          fit: BoxFit.fill,
        ),
      ),
      width: 300,
      height: 540,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Text(
          //   'Уровень: ${widget.level}',
          //   style: const TextStyle(color: Colors.white, fontSize: 20),
          // ),
          // const MovesSmallPanel(),
          BlueButton(
            text: 'Как играть',
            animated: false,
            onPressed: onTutorialClick,
          ),
          const SizedBox(height: 10),
          BlueButton(text: 'Выйти', animated: false, onPressed: onExitClick)
        ],
      ),
    );
  }

  void onTutorialClick() {
    TutorialAddon.showTutorial(context);
  }

  void onExitClick() {
    Navigator.of(context).pushNamed('/');
  }
}
