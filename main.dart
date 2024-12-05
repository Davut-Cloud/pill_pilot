import 'dart:io';

void main(){
// Login
// Registrierung
// Als Gast verwenden

bool isRunning = true;

while (isRunning) {
  print ("Wähle eine der beiden Menüpunkte aus");
  print ("Login(1), Registrieren(2), Als Gast verwenden(3), beenden(4)");
  String? userInput = stdin.readLineSync();
  switch (userInput) {
    case "1" : 
      print("du hast login ausgewählt");
    case "2" :
      print("du hast registrierung gewählt");
    case "3" :
      print("du hast Gast verwenden gewählt");
    case "4" :
      print("du beendest das Programm");
      isRunning = false;
  }
  

}
}