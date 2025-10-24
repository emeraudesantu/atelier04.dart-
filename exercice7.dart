 class Tache {
  
  String description = "";

  static int nombreTotal = 0; 

  Tache(this.description) {
    
    nombreTotal++;
    print("Nouvelle tâche créée : $description");
  }
}

