import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String player1Name;
  final String player2Name;
  final int player1Score;
  final int player2Score;

  const ResultScreen({
    super.key,
    required this.player1Name,
    required this.player2Name,
    required this.player1Score,
    required this.player2Score,
  });

  @override
  Widget build(BuildContext context) {
    String resultText = '';
    if (player1Score > player2Score) {
      resultText = "$player1Name vant!";
    } else if (player2Score > player1Score) {
      resultText = "$player2Name vant!";
    } else {
      resultText = "Uavgjort!";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultat'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resultText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Text(
              "$player1Name: $player1Score",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "$player2Name: $player2Score",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 40),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text("Ferdig"),
            ),
          ],
        ),
      ),
    );
  }
}
