import 'package:flutter/material.dart';

class Parametre{

  String name;
  Icon icons;
  String route;

  Parametre({required this.name, required this.icons, required this.route});

}

List <Parametre> param = [
  Parametre(name: 'Découverte', icons: const Icon(Icons.all_inclusive), route: '/découverte'),
  Parametre(name: 'Créer un devis', icons: const Icon(Icons.add), route: '/créer_devis'),
  Parametre(name: 'Proposition selon mon budget', icons: const Icon(Icons.auto_mode), route: '/devis_auto'),
  Parametre(name: 'A propos', icons: const Icon(Icons.airline_stops), route: '/about')
];