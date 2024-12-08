import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  // TODO 4.1: Legg til state for å holde styr på navn og poengsum på spiller 1 og 2.  Husk å oppdatere konstruktøren!

  const ResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultat'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TODO 4.3: Legg til en komponent som viser frem resultatet fra kampen.
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
