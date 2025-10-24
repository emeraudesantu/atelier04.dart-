 
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


}
