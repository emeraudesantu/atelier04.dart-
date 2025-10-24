
class Livre {

  String _titre;
  String _auteur;

  Livre(this._titre, this._auteur);

  void display() {
    print("Titre : $_titre, Auteur : $_auteur");
  }
}

class Roman extends Livre {

  double _prix;

  Roman(String titre, String auteur, this._prix) : super(titre, auteur);

 @override
  void display() {
    super.display();
    print("Prix : $_prix \$");
  }
}

void main() {

  var livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
  livre1.display();

  var roman1 = Roman("Les Misérables", "Victor Hugo", 25.50);
  roman1.display();
}