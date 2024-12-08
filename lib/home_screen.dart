import 'package:alv_pong/match_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Alv Pong")),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: player1Controller,
                  decoration: const InputDecoration(labelText: "Spiller 1"),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: player2Controller,
                  decoration: const InputDecoration(labelText: "Spiller 2"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MatchScreen(
                                  player1: player1Controller.text,
                                  player2: player2Controller.text)));
                    },
                    child: const Text("Start matchen"))
              ],
            )));
  }
}
