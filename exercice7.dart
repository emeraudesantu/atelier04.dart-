 class Tache {
  
  String description = "";

  static int nombreTotal = 0; 

  Tache(this.description) {
    
    nombreTotal++;
    print("Nouvelle tâche créée : $description");
  }
}

void main() {
 
  var t1 = Tache("Faire les courses");
  var t2 = Tache("Réviser pour l’examen");
  var t3 = Tache("Envoyer un email");

  print("Nombre total de tâches créées : ${Tache.nombreTotal}");
}