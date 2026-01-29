import 'package:flutter/material.dart';
import 'coach_screen.dart';
import 'scanner_screen.dart';
import 'ranking_screen.dart';
import 'challenges_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VivaLeve Dashboard')),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _card(context, 'Coach IA', const CoachScreen()),
          _card(context, 'Scanner', const ScannerScreen()),
          _card(context, 'Ranking', const RankingScreen()),
          _card(context, 'Desafios', const ChallengesScreen()),
        ],
      ),
    );
  }

  Widget _card(BuildContext ctx, String title, Widget page) {
    return GestureDetector(
      onTap: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => page)),
      child: Card(
        child: Center(child: Text(title, style: const TextStyle(fontSize: 18))),
      ),
    );
  }
}
