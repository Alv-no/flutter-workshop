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

### Del 1 - Det grunnleggende

#### Oppgave 1 - Skipp og hoi!
Vi starter enkelt: Bli kjent med oppsettet av prosjektet og start appen. Gå inn i `lib/main.dart` og `lib/home_screen.dart` og se hva som er der.

#### Oppgave 2 - Starte en match :pong: 

Akkurat nå skjer det ikke så mye på hjem-skjermen. Det er to input-felt og en knapp, men ingen av dem har noen funksjonalitet. Dette skal du implementere i `home_screen.dart`. 

PS! Du trenger ikke ta stilling til `match_screen.dart` helt enda;)

1. Vi trenger å holde styr på navnet til de to spillerne i widgeten. Legg til passende felter i `HomeScreen`-widgeten. Flutter-dokumentasjonen er grei å ha her: https://docs.flutter.dev/cookbook/forms/text-field-changes.

<details><summary>🚨Løsningsforslag</summary>

Vi bruker `TextEditingController` klassen fra punkt 2 i flutter-dokumentasjonen. 
```
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

2. Nå som vi har navnene må vi starte kampen ved å klikke på "Start matchen"-knappen. Implementer funksjonalitet for å navigere til `MatchScreen` i `match_screen.dart`.

Hint: Bruk `Navigation.push()` - https://docs.flutter.dev/cookbook/navigation/navigation-basics#2-navigate-to-the-second-route-using-navigator-push

<details><summary>🚨Løsningsforslag</summary>



```
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

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
