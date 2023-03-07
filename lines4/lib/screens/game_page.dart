import 'package:flutter/material.dart';
import 'package:linez4/addons/sound_addon.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../components/game/board_grid.dart';
import '../components/game/moves_right_panel.dart';
import '../components/top_bar.dart';
import '../domain/level_settings.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State createState() => GamePageState();
}

class GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
    SoundAddon.playMusic(Assets.music.theSpaceOperaRemix);
  }

  @override
  void dispose() {
    super.dispose();
    SoundAddon.stopMusic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.themes.creatures.backgroundTheArk1ByNLuty
                .provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const TopBar(),
            Center(
              child: Table(
                defaultColumnWidth: const IntrinsicColumnWidth(),
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: BoardGrid(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: MovesRightPanel(
                          level: 2,
                          settings: LevelSettings(hasMoves: true, maxMoves: 50),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
