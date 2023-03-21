import 'package:flutter/material.dart';
import 'package:examen_mobile/services/Affichage.dart';
import 'package:examen_mobile/services/destination.dart';

class Decouverte extends StatefulWidget {
  const Decouverte({Key? key}) : super(key: key);

  @override
  State<Decouverte> createState() => _DecouverteState();
}

class _DecouverteState extends State<Decouverte> {

  List<Destination> dest = AffichageDestination().destination;
  String titre = '';
  String msg = 'Destination disponible';

  final TextEditingController _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final size = screenWidth / 12;
    final size2 = screenWidth / 8.5;
    final size3 = screenWidth / 16;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              'Découverte',
              style: TextStyle(
                  fontSize: size,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 5),
            child:   Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: size2,
                    child: TextField(
                      controller: _controllerSearch,
                      decoration: const InputDecoration(
                        hintText: 'Rechercher...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    setState(() {
                      titre = _controllerSearch.text.toLowerCase();
                      List<Destination> tmp = [];
                      for(int i=0; i<AffichageDestination().destination.length; i++){
                        if((AffichageDestination().destination[i].name.toLowerCase()) == titre){
                          tmp.add(AffichageDestination().destination[i]);
                        }
                      }
                      if(tmp.isNotEmpty){
                        msg = 'Resultat';
                        dest = tmp;
                      }
                      else{
                        msg = 'Introuvable';
                        dest = [];
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _controllerSearch.text = '';
                      msg = 'Destination disponible';
                      dest = AffichageDestination().destination;
                    });
                  },
                  icon: const Icon(
                    Icons.restart_alt_rounded,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0),
          Center(
            child: Text(
              msg,
              style: TextStyle(
                fontSize: size3,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          AffichageDestination().afficher(dest, context),
        ],
      ),
    );
  }
}
