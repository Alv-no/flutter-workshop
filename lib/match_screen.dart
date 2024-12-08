import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  final String player1;
  final String player2;

  const MatchScreen({required this.player1, required this.player2});

  @override
  State<StatefulWidget> createState() => MatchScreenState();
}

class MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Match")),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(widget.player1),
                      Text("0", style: const TextStyle(fontSize: 64)),
                      ElevatedButton(onPressed: () {}, child: const Text("+ 1"))
                    ],
                  ),
                  const Column(
                    children: [
                      // SizedBox(height: 24),
                      Text("-", style: TextStyle(fontSize: 64)),
                      SizedBox(height: 24),
                    ],
                  ),
                  Column(
                    children: [
                      Text(widget.player2),
                      Text("0", style: const TextStyle(fontSize: 64)),
                      ElevatedButton(onPressed: () {}, child: const Text("+1"))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Kampen er ferdig"))
            ])));
  }
}
