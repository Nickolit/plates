import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../addons/sound_addon.dart';
import '../components/blue_button.dart';
import '../components/lobby/game_selector_panel.dart';
import '../components/top_bar.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key});

  @override
  State createState() => LobbyPageState();
}

class LobbyPageState extends State<LobbyPage> {
  @override
  void initState() {
    super.initState();
    SoundAddon.playMusic(Assets.music.theSpaceOpera);
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
            image: Assets.images.lobby.background3.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const TopBar(),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GameSelectorPanel(
                          panelAsset: Assets.images.lobby.square4.path,
                          gameName: 'square4',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GameSelectorPanel(
                          panelAsset: Assets.images.lobby.line5.path,
                          gameName: 'line5',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GameSelectorPanel(
                          panelAsset: Assets.images.lobby.swapBalls.path,
                          gameName: 'swap_balls',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Table(
                    defaultColumnWidth: const IntrinsicColumnWidth(),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: BlueButton(
                              text: 'Рейтинги',
                              onPressed: onRatingsClick,
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(5),
                          //   child: BlueButton(
                          //     text: 'Лотерея',
                          //     onPressed: onLotteryClick,
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.all(5),
                          //   child: BlueButton(
                          //     text: 'Темы',
                          //     onPressed: onThemesClick,
                          //   ),
                          // ),
                        ],
                      )
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

  void onRatingsClick() {
    Navigator.of(context).pushNamed('/ratings');
  }

  void onLotteryClick() {
    Navigator.of(context).pushNamed('/lottery');
  }

  void onThemesClick() {
    Navigator.of(context).pushNamed('/themes');
  }
}
