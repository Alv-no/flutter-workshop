import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  final String player1;
  final String player2;

  const MatchScreen({required this.player1, required this.player2});

  @override
  State<StatefulWidget> createState() => MatchScreenState();
}

class MatchScreenState extends State<MatchScreen> {
  // TODO 3.1: Legge til felter for å holde på poengene til spiller 1 og 2.

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
                      // TODO 3.2: vis fram poengene til spiller 1
                      Text("0", style: const TextStyle(fontSize: 64)),
                      ElevatedButton(
                          // TODO 3.3: Oppdater poengsummen til spiller 2
                          onPressed: () {},
                          child: const Text("+ 1"))
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
                      // TODO 3.2: vis fram poengene til spiller 2
                      Text("0", style: const TextStyle(fontSize: 64)),
                      ElevatedButton(
                          // TODO 3.3: Oppdater poengsummen til spiller 2
                          onPressed: () {},
                          child: const Text("+1"))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                  // TODO 4.2: Naviger til ResultScreen og send med navn og poeng på begge spillerne.
                  onPressed: () {},
                  child: const Text("Kampen er ferdig"))
            ])));
  }
}
