import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../blue_button.dart';

class GameSelectorPanel extends StatefulWidget {
  const GameSelectorPanel({
    Key? key,
    required this.panelAsset,
    required this.gameName,
  }) : super(key: key);

  final String panelAsset;
  final String gameName;

  @override
  State createState() {
    return GameSelectorPanelState();
  }
}

class GameSelectorPanelState extends State<GameSelectorPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.lobby.goldenPanelBg.provider(),
          fit: BoxFit.fill,
        ),
      ),
      width: 250,
      height: 300,
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: Image.asset(widget.panelAsset),
            ),
          ),
          // BlueButton(text: 'Уровни', onPressed: onCampaignClick),
          const SizedBox(height: 10),
          BlueButton(text: 'Играть', onPressed: onPlayClick),
        ],
      ),
    );
  }

  void onCampaignClick() {
    Navigator.of(context).pushNamed('/campaign');
  }

  void onPlayClick() {
    Navigator.of(context).pushNamed('/game');
  }
}
