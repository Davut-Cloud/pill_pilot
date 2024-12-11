import 'dart:io';


void main() {
  // Beispiel-Benutzerdaten (normalerweise in einer Datenbank gespeichert)
  Map<String, String> userDatabase = {};

  bool isRunning = true;

  while (isRunning) {
    print("Wähle eine der folgenden Optionen aus:");
    print("Login (1), Registrieren (2), Als Gast verwenden (3), Beenden (4)");
    String? userInput = stdin.readLineSync();

    switch (userInput) {
      case "1":
        // Login
        print("Du hast Login ausgewählt.");
        print("Bitte gib deinen Benutzernamen ein:");
        String? username = stdin.readLineSync();
        print("Bitte gib dein Passwort ein:");
        String? password = stdin.readLineSync();

        if (username != null && password != null) {
          // Überprüfung der Benutzeranmeldedaten
          if (userDatabase.containsKey(username) && userDatabase[username] == password) {
            print("Login erfolgreich! Willkommen, $username.");
          } else {
            print("Fehler: Benutzername oder Passwort falsch.");
          }
        } else {
          print("Ungültige Eingabe.");
        }
        break;

      case "2":
        // Registrierung
        print("Du hast Registrierung gewählt.");
        print("Bitte gib deinen gewünschten Benutzernamen ein:");
        String? newUsername = stdin.readLineSync();
        print("Bitte gib dein Passwort ein:");
        String? newPassword = stdin.readLineSync();

        if (newUsername != null && newPassword != null) {
          if (userDatabase.containsKey(newUsername)) {
            print("Fehler: Der Benutzername ist bereits vergeben.");
          } else {
            userDatabase[newUsername] = newPassword;
            print("Registrierung erfolgreich! Dein Benutzername ist $newUsername.");
          }
        } else {
          print("Ungültige Eingabe.");
        }
        break;

      case "3":
        // Gastzugang
        print("Du hast Gast verwenden gewählt.");
        print("Willkommen im Gastmodus! Du kannst das System ohne Anmeldung verwenden.");
        break;

      case "4":
        // Programm beenden
        print("Du beendest das Programm.");
        isRunning = false;
        break;

      default:
        print("Ungültige Eingabe. Bitte wähle eine der verfügbaren Optionen.");
        break;
    }
  }
  // Funktion für die Benutzeranmeldung
  login(Map<String, String> userDatabase) {
  print("Du hast Login ausgewählt.");
  print("Bitte gib deinen Benutzernamen ein:");
  String? username = stdin.readLineSync();
  print("Bitte gib dein Passwort ein:");
  String? password = stdin.readLineSync();

}
}