import 'package:flutter/material.dart';
import 'package:examen/services/destination.dart';


class AffichageDestination{

  List<Destination> destination = [
    Destination(
        name: 'Morondava',
        img1: 'Morondava1.jpg',
        img2: 'Morondava2.jpg',
        price: 6000,
        description: "Morondava est une ville située sur la côte ouest de Madagascar, "
            "connue pour ses paysages magnifiques, notamment l'avenue des baobabs, "
            "une allée de baobabs imposants qui est l'une des attractions touristiques "
            "les plus populaires du pays. En plus de l'avenue des baobabs, Morondava "
            "possède d'autres attraits touristiques tels que les plages de sable fin et les "
            "parcs nationaux à proximité, comme le parc national de Kirindy Mitea qui abrite "
            "une grande variété d'espèces de lémuriens et de reptiles."
    ),
    Destination(
        name: 'Dubaï',
        img1: 'Dubai1.jpg',
        img2: 'Dubai2.jpg',
        price: 13000,
        description: "Dubai est une ville située aux Émirats arabes unis, "
            "dans la région du golfe Persique. Elle est connue pour son architecture "
            "moderne, ses centres commerciaux extravagants, ses hôtels luxueux et ses "
            "activités touristiques variées. Dubai possède également plusieurs attractions "
            "touristiques emblématiques, notamment la tour Burj Khalifa, la plus haute tour du monde, "
            "le centre commercial Dubaï Mall, "
            "le parc aquatique Wild Wadi et le parc d'attractions Dubai Parks and Resorts."
    ),
    Destination(
        name: 'Nosybe',
        img1: 'NosyBe1.jpg',
        img2: 'NosyBe2.jpg',
        price: 8000,
        description: "Nosy Be est une île située au large de la côte nord-ouest de "
            "Madagascar, dans l'océan Indien. "
            "Hell-Ville est la principale ville de l'île, située sur la côte ouest, "
            "connue pour ses rues animées, ses marchés locaux et ses "
            "restaurants proposant une cuisine malgache authentique. Les plages "
            "de Nosy Be sont également un attrait majeur, avec des eaux cristallines et une "
            "faune marine colorée. Les activités populaires sur l'île incluent la plongée avec tuba, "
            "la plongée sous-marine, le kayak et la pêche en haute mer. Hell-Ville est également connue "
            "pour sa vie nocturne animée, avec des bars et des clubs proposant de la musique en direct et "
            "des cocktails exotiques. En bref, Nosy Be Hell Ville est une destination touristique populaire "
            "pour les voyageurs à la recherche de détente, de plaisir et d'aventure dans un cadre tropical."
    ),
    Destination(
        name: 'Suisse',
        img1: 'Suisse1.jpg',
        img2: 'Suisse2.jpg',
        price: 25000,
        description: "La Suisse est un pays situé en Europe centrale, connu pour ses montagnes majestueuses, "
            "ses lacs scintillants et ses villes charmantes. Elle est connue pour ses activités de plein air, "
            "notamment le ski, la randonnée, le VTT et le parapente. Les stations de ski suisses sont parmi les "
            "meilleures au monde et offrent des pistes pour tous les niveaux de compétence. Elle est aussi célèbre "
            "pour ses paysages époustouflants. Les montagnes suisses offrent des vues panoramiques sur les vallées "
            "en contrebas, les lacs et les forêts. La Suisse est également connue pour sa "
            "culture riche et diversifiée. Les villes suisses, telles que Zurich, Genève et Berne, offrent des musées, "
            "des théâtres et des festivals pour les visiteurs. La Suisse est également célèbre pour sa gastronomie, "
            "notamment le chocolat, le fromage et la fondue."
    ),
    Destination(
        name: 'Thaïlande',
        img1: 'Thailand1.jpg',
        img2: 'Thailand2.jpg',
        price: 46000,
        description: "La Thaïlande est une destination de vacances très populaire en Asie du Sud-Est. Le pays est connu "
            "pour ses belles plages, ses temples bouddhistes, sa nourriture délicieuse et sa vie nocturne animée. "
            "Elle possède certaines des plus belles plages du monde, telles que les plages de Phuket, Krabi et Koh Samui. "
            "Il y a également plusieurs îles isolées qui offrent des vacances reposantes dans un cadre paradisiaque. "
            "Elle est riche en culture et en traditions. Les temples bouddhistes sont des attractions touristiques populaires, "
            "avec des temples célèbres tels que le Wat Arun à Bangkok et le Wat Phra Kaew à Chiang Mai. La nourriture thaïlandaise "
            "est célèbre dans le monde entier pour ses saveurs épicées et ses ingrédients frais. Les plats thaïlandais populaires "
            "incluent le pad thaï, la soupe tom yum et le curry vert. La vie nocturne en Thaïlande est animée, en particulier dans "
            "les villes populaires telles que Bangkok, Pattaya et Phuket. Les visiteurs peuvent profiter de bars, de clubs et "
            "de spectacles pour une soirée de divertissement."
    ),
    Destination(
        name: 'Turquie',
        img1: 'Turquie1.jpg',
        img2: 'Turquie2.jpg',
        price: 16000,
        description: "Les vacances en Turquie peuvent offrir une expérience riche en culture, en histoire et en cuisine. La Turquie "
            "possède de nombreux sites historiques remarquables, comme le palais de Topkapi à Istanbul, la cité antique d'Éphèse ou "
            "encore la Cappadoce avec ses églises rupestres et ses formations rocheuses uniques. La cuisine turque est réputée pour "
            "ses plats délicieux et variés, comme les kebabs, les mezze, les baklavas ou encore le célèbre café turc. Elle possède "
            "également de nombreuses stations balnéaires, notamment la ville d'Antalya, la station balnéaire de Bodrum et "
            "la plage d'Oludeniz, où l'on peut profiter du soleil, de la mer et des sports nautiques. Les marchés turcs, appelés « bazaars »,"
            " sont également une attraction touristique populaire. On y trouve des épices, des textiles, des bijoux, des tapis et bien d'autres "
            "produits artisanaux. En Turquie, les gens sont généralement très accueillants et chaleureux envers les touristes, "
            "ce qui peut rendre les vacances encore plus agréables."
    ),
  ];

  Widget afficher(List<Destination> list, BuildContext context){

    final screenWidth = MediaQuery.of(context).size.width;
    final size = screenWidth / 15;

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                children: <Widget>[
                  Text(
                    list[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 200,
                            child: Image(
                              image: AssetImage('assets/images/${list[index].img1}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Expanded(
                          child: Container(
                            height: 200,
                            child: Image(
                              image: AssetImage('assets/images/${list[index].img2}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext con){
                                return AlertDialog(
                                  title: Text(list[index].name),
                                  content: SingleChildScrollView(child: Text(list[index].description)),
                                  actions: [
                                    Center(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(con).pop();
                                        },
                                        child: const Text('Ok'),
                                      ),
                                    ),
                                  ],
                                );
                              }
                          );
                        },
                        icon: const Icon(Icons.align_horizontal_left_outlined),
                        label: const Text('Description'),
                      ),
                      const SizedBox(width: 5.0),
                      ElevatedButton.icon(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext con){
                                return AlertDialog(
                                  title: Text('${list[index].name} - Prix'),
                                  content: Text(
                                      'Pour voyager vers ${list[index].name}, il vous faut ${list[index].price} '
                                          'par individu',
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: [
                                    Center(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(con).pop();
                                        },
                                        child: const Text('Ok'),
                                      ),
                                    ),
                                  ],
                                );
                              }
                          );
                        },
                        label: const Text('Prix'),
                        icon: const Icon(Icons.monetization_on_outlined),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}