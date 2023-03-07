import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../components/blue_button.dart';
import '../components/lobby/scratch_panel.dart';
import '../components/top_bar.dart';

class LotteryPage extends StatefulWidget {
  const LotteryPage({super.key});

  @override
  State createState() => LotteryPageState();
}

class LotteryPageState extends State<LotteryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.lobby.gg59791089.provider(),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Column(
          children: [
            const TopBar(),
            const SizedBox(height: 50),
            const Text(
              'Сотрите 5 полей и получите приз, если будут 3 совпадения',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    Table(
                      defaultColumnWidth: const IntrinsicColumnWidth(),
                      children: const [
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ScratchPanel(item: 'jump'),
                            ),
                          ],
                        ),
                      ],
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
