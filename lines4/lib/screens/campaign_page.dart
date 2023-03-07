import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../components/blue_button.dart';
import '../components/lobby/level_button.dart';
import '../components/top_bar.dart';

class CampaignPage extends StatefulWidget {
  const CampaignPage({super.key});

  @override
  State createState() => CampaignPageState();
}

class CampaignPageState extends State<CampaignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.lobby.background.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const TopBar(),
            Assets.images.ui.longIndicatorBg2.image(),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    Assets.images.ui.bigLeftArrow.image(),
                    Table(
                      defaultColumnWidth: const IntrinsicColumnWidth(),
                      children: [
                        const TableRow(
                          children: [
                            LevelButton(level: 1, open: true, stars: 3),
                            LevelButton(level: 2, open: true, stars: 2),
                            LevelButton(level: 3, open: true),
                            LevelButton(level: 4, open: false),
                            LevelButton(level: 5, open: false),
                          ],
                        ),
                        TableRow(
                          children: [
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                          ],
                        ),
                        TableRow(
                          children: [
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                            Assets.images.ui.level.biglv01.image(),
                          ],
                        ),
                      ],
                    ),
                    Assets.images.ui.bigRightArrow.image(),
                  ],
                )
              ],
            ),
            BlueButton(text: 'Выйти', onPressed: onExitClick)
          ],
        ),
      ),
    );
  }

  void onExitClick() {
    Navigator.of(context).pushNamed('/');
  }
}
