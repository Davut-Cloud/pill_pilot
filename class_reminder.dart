// reminder.dart

class Reminder {
  // Attribute
  String medicationName; // Name des Medikaments
  String scheduledTime; // Geplante Uhrzeit
  bool isConfirmed; // Bestätigung der Einnahme

  // Konstruktor
  Reminder({
    required this.medicationName,
    required this.scheduledTime,
    this.isConfirmed = false,
  });

  // Methode zur Erinnerungsausgabe
  void notifyUser() {
    print('Erinnerung: Es ist Zeit, $medicationName einzunehmen um $scheduledTime.');
  }

  // Methode zur Bestätigung der Einnahme
  void confirm() {
    isConfirmed = true;
    print('$medicationName wurde um $scheduledTime eingenommen.');
  }
}