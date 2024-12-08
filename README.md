# Introduksjon til Flutter

Dette intro-prosjektet til Flutter er lagt opp som en workshop og er for helt nybegynnere. Workshoppen består av et sett med oppgaver, med korte forklaringer etter hver oppgave. Workshoppen er designet til å ta minst 15 minutter, men det vet vi ikke før vi har prøvd :) 


## Bakgrunn for prosjektet i denne workshoppen
Det går rykter om at mange Alver (les; Eirik S) har gått seg lei av å holde stillingen i bordtennis-kampene de spiller.  
Etter mye om og men har ledelsen gått med å sette i gang et nytt internprosjekt fordi behovet er så enormt. 
Siden de har hørt at du nå har blitt flutter ekspert, har du fått i oppgave å implementere appen. 
Heldigvis har en av våre flinke teknologiledere brutt ned utviklingen i et sett med oppgaver. Disse skal du nå løse. 

### Hovedfunksjonalitet 
Hovedfunksjonaliteten til appen vil i første omgang kun ta for seg å tracke enkeltkamper lokalt. 
For å oppnå dette trenger vi følgende: 

1. En bruker skal kunne legge inn navn på to spillere som fritekst og starte en kamp mellom disse. 
2. Brukeren skal kunne legge til poeng for hver spiller underveis i kampen for å holde stillingen.
3. Brukeren skal kunne avslutte kampen og se det endelige resultatet. 

## Jobbe lokalt eller i nettleser?

Har du flutter installert så kjør lokalt i simulator eller i nettleser. Har du ikke flutter installert, bør du jobbe i nettleser via denne linken: TODO. 
Time is of the essence. 


## Oppgaver
Som nevnt over skal du implementere en bordtennis-poengstillingsholder :fire: ved å løse oppgavene du har fått nedenfor.

### Oppgave 1 - Skipp og hoi!
Vi starter enkelt: Bli kjent med oppsettet av prosjektet og start appen. Gå inn i `lib/main.dart` og `lib/home_screen.dart` og se hva som er der.

### Oppgave 2 - Starte en match :pong: 

Akkurat nå skjer det ikke så mye på hjem-skjermen. Det er to input-felt og en knapp, men ingen av dem har noen funksjonalitet. Dette skal du implementere i `lib/home_screen.dart`. Hold det enkelt.

PS! Du trenger ikke ta stilling til `lib/match_screen.dart` helt enda;) 

1. Vi trenger å holde styr på navnet til de to spillerne i widgeten. Legg til passende felter i `HomeScreen`-widgeten. Flutter-dokumentasjonen er grei å ha her: https://docs.flutter.dev/cookbook/forms/text-field-changes.

<details><summary>🚨Løsningsforslag</summary>

Vi bruker `TextEditingController` klassen fra punkt 2 i flutter-dokumentasjonen. 
```dart
class HomeScreen extends StatelessWidget {
    
    // Lagt til to felter: en kontroller for hver spiller
    final TextEditingController player1Controller = TextEditingController();
    final TextEditingController player2Controller = TextEditingController();

...

                TextField(
                  // vi sender med kontrolleren i tekst-feltet
                  controller:  player1Controller,
                  decoration: const InputDecoration(labelText: "Spiller 1"),
                ),
                const SizedBox(height: 5),
                TextField(
                  // vi sender med kontrolleren i tekst-feltet
                  controller: player2Controller,
                  decoration: const InputDecoration(labelText: "Spiller 2"),
                ),
```

</details>

2. Nå som vi har navnene må vi starte kampen ved å klikke på "Start matchen"-knappen. Implementer funksjonalitet for å navigere til `MatchScreen` i `lib/match_screen.dart`.

Hint: Bruk `Navigation.push()` - https://docs.flutter.dev/cookbook/navigation/navigation-basics#2-navigate-to-the-second-route-using-navigator-push


Verifiser at ting fungerer ved å trykke på knappen. Du skal da bli tatt til en ny skjerm hvor spillernes navn vises fram. 

<details><summary>🚨Løsningsforslag</summary>

```dart
ElevatedButton(
    onPressed: () {
    
    // Dytt den nye ruta/skjermen på navigasjonen. 
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MatchScreen(
                  // navnet på disse argumentene må passe feltene i MatchScreen 
                  player1: player1Controller.text,
                  player2: player2Controller.text)));
    },
    child: const Text("Start matchen!"))
```
</details>


### Oppgave 3 - Holde stillingen på poeng :fire:
I denne oppgaven skal vi holde styr på poengene til spillerne. Dette gjør vi i widgeten `MatchScreen` i `lib/match_screen.dart`.

PS: Vi kommer til å bruke state og `StatefulWidget`s som vi kanskje ikke har gått gjennom, men det bør være ganske likt som widgetene i den foregående oppgaven.

1. Legg til nye felter i staten til `MatchScreen` for å holde på poengene til spiller 1 og 2. 
2. Vis fram poengene til spillerne under spillernavnene deres. Denne er per nå hardkodet til å vise tallet 0.
3. Inkrementer poengsummen til hver av spillerne ved trykk på knappen med teksten '+1' under hver spiller.


<details><summary>🚨Løsningsforslag</summary>

1.
```dart
class MatchScreenState extends State<MatchScreen> {
  int player1Score = 0;
  int player2Score = 0;
...
```
2.
```dart
...
Text(widget.player1),
Text("$player1Score", style: const TextStyle(fontSize: 64)),
...
Text(widget.player2),
Text("$player2Score", style: const TextStyle(fontSize: 64)),
...
``` 

3.
Vi er nødt til å bruke state og `setState()`-metoden i flutter. 

```
...
ElevatedButton(
    onPressed: () {
    // Dytt den nye ruta/skjermen på navigasjonen. 
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MatchScreen(
                  // navnet på disse argumentene må passe feltene i MatchScreen 
                  player1: player1Controller.text,
                  player2: player2Controller.text)));
    },
    child: const Text("Start matchen!"))
...
```
</details>


### Oppgave 4 - Avslutte matchen og se resultater :whoho!:
Nå er vi klare til å spille bordtennis, men vi må fortsatt håndtere når en kamp er ferdig. 
Derfor skal du nå avslutte kampen og ta brukeren til en ny side som viser resultatet. 

For å spare deg for dyrebar tid har en hjelpsom alv implementert mye av `ResultScreen`-widgeten i `lib/result_screen.dart`. Siden den hjelpsomme alven sjonglerer 3 prosjekter og driver en veldedighet for hjemløse hunder på fritiden, må du implementere resten! 

1. Implementer ferdig staten i `ResultScreen` i `lib/result_screen.dart`. Den må holde styr på navn og poeng for spiller 1 og 2. Husk å oppdatere konstruktøren!  
2. Naviger til `ResultScreen`-widgeten ved trykk på "Kampen er ferdig"-knappen i `MatchScreen`-widgeten. Husk å sende med staten du tilrettela for i forrige steg. 
3. Legg til en komponent som viser resultatet fra kampen. Her velger du om du vil bruke enkle `Text()`-widgets eller noe mer avansert. 
4. Legg til en tittel på resultat-siden som sier noe om hvem som vant!

<details><summary>🚨Løsningsforslag</summary>

```dart
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

```

</details>

