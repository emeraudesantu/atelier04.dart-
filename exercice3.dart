 
class Compte {
  
  final String numeroCompte;

  double _solde;

  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde => "${_solde.toStringAsFixed(2)} \$";


 void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
      // Optionnel : afficher confirmation du dépôt
      print("Dépôt effectué : ${montant.toStringAsFixed(2)} \$");
    } else {
      // Montant invalide => ne rien faire et afficher un message d'erreur
      print("Montant invalide : le dépôt doit être positif.");
    }
  }

  // Méthode utilitaire (non demandée mais pratique) : afficher le solde
  void afficherSolde() {
    print("Solde du compte $numeroCompte : ${solde}");
  }
}

void main() {

  // Création d'un compte avec numéro "C12345" et solde par défaut 0.0
  var compte = Compte("C12345");

  // Affichage du solde initial (devrait être "0.00 $")
  compte.afficherSolde();

  // Effectuer un dépôt positif (ex : 150.0)
  compte.depot(150.0);

  // Affichage du solde après dépôt (devrait être "150.00 $")
  compte.afficherSolde();

  // Tentative de dépôt invalide (montant négatif) pour montrer la vérification
  compte.depot(-20.0);

  // Affichage final du solde (devrait rester "150.00 $")
  compte.afficherSolde();
}
