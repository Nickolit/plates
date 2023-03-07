import 'package:flutter/material.dart';
import 'package:linez4/components/lobby/avatar_panel.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../components/blue_button.dart';
import '../components/top_bar.dart';

class RatingsPage extends StatefulWidget {
  const RatingsPage({super.key});

  @override
  State createState() => RatingsPageState();
}

class RatingsPageState extends State<RatingsPage> {
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
            const Text(
              'Лидеры сегодня',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 1,
                        cash: 710,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Лидеры недели',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 4,
                        cash: 1710,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Лидеры месяца',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AvatarPanel(
                        avatarAssetUrl: Assets.images.cell52x52.path,
                        level: 19,
                        cash: 5710,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
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
