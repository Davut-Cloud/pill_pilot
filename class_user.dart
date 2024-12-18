
// user.dart

class User {
  // Attribute
  String username; // Benutzername
  String email; // E-Mail-Adresse
  String password; // Passwort

  // Konstruktor
  User({required this.username, required this.email, required this.password});

  // Methoden
  // Methode zur Registrierung
  void register() {
    print('User $username wurde erfolgreich registriert.');
  }

  // Methode zum Login
  bool login(String inputEmail, String inputPassword) {
    if (inputEmail == email && inputPassword == password) {
      print('Login erfolgreich für $username.');
      return true;
    } else {
      print('Login fehlgeschlagen. Bitte überprüfen Sie die Eingaben.');
      return false;
    }
  }
}