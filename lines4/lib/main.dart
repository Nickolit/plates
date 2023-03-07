import 'package:flutter/material.dart';

import 'screens/campaign_page.dart';
import 'screens/game_page.dart';
import 'screens/lobby_page.dart';
import 'screens/lottery_page.dart';
import 'screens/ratings_page.dart';
import 'screens/themes_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linez',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const LobbyPage(),
        '/campaign': (context) => const CampaignPage(),
        '/ratings': (context) => const RatingsPage(),
        '/lottery': (context) => const LotteryPage(),
        '/themes': (context) => const ThemesPage(),
        '/game': (context) => const GamePage(),
      },
    );
  }
}
