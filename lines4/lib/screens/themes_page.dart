import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../components/blue_button.dart';
import '../components/top_bar.dart';

class ThemesPage extends StatefulWidget {
  const ThemesPage({super.key});

  @override
  State createState() => ThemesPageState();
}

class ThemesPageState extends State<ThemesPage> {
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
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Assets.images.themes.angryBirds.angryThemeThumb
                          .image(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Assets.images.themes.billiard.billiardThemeThumb
                          .image(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Assets.images.themes.creatures.creaturesThemeThumb
                          .image(),
                    ),
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
