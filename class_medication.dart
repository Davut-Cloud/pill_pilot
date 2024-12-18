// medication.dart

class Medication {
  // Attribute
  String name; // Name des Medikaments
  String type; // Art des Medikaments (z. B. Tablette, Sirup)
  int quantity; // Menge des Medikaments
  String unit; // Einheit (z. B. mg, ml)
  String schedule; // Zeitplanoptionen (z. B. täglich, alle 3 Tage)
  List<String> times; // Uhrzeiten für die Einnahme
  int duration; // Dauer der Einnahme in Tagen

  // Konstruktor
  Medication({
    required this.name,
    required this.type,
    required this.quantity,
    required this.unit,
    required this.schedule,
    required this.times,
    required this.duration,
  });

  // Methode zur Anzeige der Details des Medikaments
  void displayDetails() {
    print('Medikament: $name ($type)');
    print('Menge: $quantity $unit');
    print('Zeitplan: $schedule, Dauer: $duration Tage');
    print('Uhrzeiten: ${times.join(', ')}');
  }
}
