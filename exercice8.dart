
class Livre {

  String _titre;
  String _auteur;

  Livre(this._titre, this._auteur);

  void display() {
    print("Titre : $_titre, Auteur : $_auteur");
  }
}