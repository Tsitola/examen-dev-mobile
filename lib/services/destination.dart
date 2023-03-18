class Destination{

  String name;
  String img1;
  String img2;
  int price; // Montant a payer par personne
  String description;

  Destination({
    required this.name,
    required this.img1,g
    required this.img2,
    required this.price,
    required this.description
  });

  int getTotalPrice(int effectif){
    return (effectif * price);
  }

}

