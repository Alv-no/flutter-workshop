import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // TODO 2.1: Legg til felter av en passende datatype til å holde styr på text-inputs for navn.

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
                  // TODO 2.1: send med feltet du lagde for første spiller
                  decoration: const InputDecoration(labelText: "Spiller 1"),
                ),
                const SizedBox(height: 5),
                TextField(
                  // TODO 2.1: send med feltet du lagde for andre spiller
                  decoration: const InputDecoration(labelText: "Spiller 2"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      // TODO 2.2: Gå til MatchScreen og send med spillernavn.
                    },
                    child: const Text("Start matchen!"))
              ],
            )));
  }
}
