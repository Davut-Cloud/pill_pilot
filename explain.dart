import 'dart:io'; 
// Importiert die Dart-Bibliothek 'dart:io', um Eingabe und Ausgabe über die Konsole zu ermöglichen.

void main() {
  // Beispiel-Benutzerdaten (normalerweise in einer Datenbank gespeichert)
  Map<String, String> userDatabase = {};
  // Erstellt eine leere Map, um Benutzername und Passwort zu speichern. 
  // Schlüssel: Benutzername (String), Wert: Passwort (String).

  bool isRunning = true;
  // Kontrollvariable, die angibt, ob das Programm weiterläuft. 

  while (isRunning) {
    // Hauptschleife, die das Programm so lange ausführt, wie `isRunning` true ist.

    print("Wähle eine der folgenden Optionen aus:");
    print("Login (1), Registrieren (2), Als Gast verwenden (3), Beenden (4)");
    // Druckt das Menü mit den verfügbaren Optionen auf die Konsole.

    String? userInput = stdin.readLineSync();
    // Liest die Benutzereingabe als String ein (kann auch null sein).

    switch (userInput) {
      // Überprüft die Benutzereingabe und führt die entsprechende Aktion aus.

      case "1":
        // Wenn der Benutzer "1" eingibt:
        login(userDatabase);
        // Ruft die Funktion `login()` auf und übergibt die `userDatabase`.
        break; 
        // Verhindert das Durchlaufen zu anderen `case`-Blöcken.

      case "2":
        // Wenn der Benutzer "2" eingibt:
        register(userDatabase);
        // Ruft die Funktion `register()` auf und übergibt die `userDatabase`.
        break;

      case "3":
        // Wenn der Benutzer "3" eingibt:
        guestAccess();
        // Ruft die Funktion `guestAccess()` auf.
        break;

      case "4":
        // Wenn der Benutzer "4" eingibt:
        print("Du beendest das Programm.");
        // Informiert den Benutzer, dass das Programm beendet wird.
        isRunning = false;
        // Setzt die Kontrollvariable auf `false`, um die Schleife zu beenden.
        break;

      default:
        // Wenn die Eingabe keiner der obigen Optionen entspricht:
        print("Ungültige Eingabe. Bitte wähle eine der verfügbaren Optionen.");
        // Gibt eine Fehlermeldung aus.
        break;
        // Beendet den Default-Block.
    }
  }
}

// Funktion für die Benutzeranmeldung
void login(Map<String, String> userDatabase) {
  print("Du hast Login ausgewählt.");
  // Informiert den Benutzer, dass die Login-Funktion ausgewählt wurde.

  print("Bitte gib deinen Benutzernamen ein:");
  // Fordert den Benutzer auf, seinen Benutzernamen einzugeben.
  String? username = stdin.readLineSync();
  // Liest den Benutzernamen ein.

  print("Bitte gib dein Passwort ein:");
  // Fordert den Benutzer auf, sein Passwort einzugeben.
  String? password = stdin.readLineSync();
  // Liest das Passwort ein.

  if (username != null && password != null) {
    // Prüft, ob sowohl Benutzername als auch Passwort eingegeben wurden.

    if (userDatabase.containsKey(username) && userDatabase[username] == password) {
      // Prüft, ob der Benutzername in der Datenbank existiert und das Passwort übereinstimmt.
      print("Login erfolgreich! Willkommen, $username.");
      // Meldet einen erfolgreichen Login.
    } else {
      print("Fehler: Benutzername oder Passwort falsch.");
      // Gibt eine Fehlermeldung aus, wenn die Anmeldedaten nicht übereinstimmen.
    }
  } else {
    print("Ungültige Eingabe.");
    // Gibt eine Fehlermeldung aus, wenn Benutzername oder Passwort nicht eingegeben wurden.
  }
}

// Funktion für die Benutzerregistrierung
void register(Map<String, String> userDatabase) {
  print("Du hast Registrierung gewählt.");
  // Informiert den Benutzer, dass die Registrierung ausgewählt wurde.

  print("Bitte gib deinen gewünschten Benutzernamen ein:");
  // Fordert den Benutzer auf, einen neuen Benutzernamen einzugeben.
  String? newUsername = stdin.readLineSync();
  // Liest den neuen Benutzernamen ein.

  print("Bitte gib dein Passwort ein:");
  // Fordert den Benutzer auf, ein neues Passwort einzugeben.
  String? newPassword = stdin.readLineSync();
  // Liest das neue Passwort ein.

  if (newUsername != null && newPassword != null) {
    // Prüft, ob sowohl Benutzername als auch Passwort eingegeben wurden.

    if (userDatabase.containsKey(newUsername)) {
      // Prüft, ob der Benutzername bereits in der Datenbank existiert.
      print("Fehler: Der Benutzername ist bereits vergeben.");
      // Gibt eine Fehlermeldung aus, wenn der Benutzername schon existiert.
    } else {
      userDatabase[newUsername] = newPassword;
      // Speichert den neuen Benutzernamen und das Passwort in der Datenbank.
      print("Registrierung erfolgreich! Dein Benutzername ist $newUsername.");
      // Meldet eine erfolgreiche Registrierung.
    }
  } else {
    print("Ungültige Eingabe.");
    // Gibt eine Fehlermeldung aus, wenn Benutzername oder Passwort nicht eingegeben wurden.
  }
}

// Funktion für den Gastzugang
void guestAccess() {
  print("Du hast Gast verwenden gewählt.");
  // Informiert den Benutzer, dass der Gastmodus ausgewählt wurde.

  print("Willkommen im Gastmodus! Du kannst das System ohne Anmeldung verwenden.");
  // Gibt eine Nachricht aus, dass der Gastmodus aktiviert ist.
}
