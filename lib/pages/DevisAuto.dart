import 'package:examen_mobile/services/Affichage.dart';
import 'package:flutter/material.dart';
import 'package:examen_mobile/services/destination.dart';

import '../services/Affichage.dart';

class DevisAuto extends StatefulWidget {
  const DevisAuto({Key? key}) : super(key: key);

  @override
  State<DevisAuto> createState() => _DevisAutoState();
}

class _DevisAutoState extends State<DevisAuto> {

  final TextEditingController _controllerEffectif = TextEditingController();
  final TextEditingController _controllerBudget = TextEditingController();


  List<Destination> proposition = [];
  String msg = "";

  int effectif = 0;
  int budget = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devis auto'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 45.0,
                    child: TextField(
                      controller: _controllerEffectif,
                      decoration: const InputDecoration(
                        hintText: 'Effectif',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Container(
                    height: 45.0,
                    child: TextField(
                      controller: _controllerBudget,
                      decoration: const InputDecoration(
                        hintText: 'Budget',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          try{
                            effectif = int.parse(_controllerEffectif.text);
                            budget = int.parse(_controllerBudget.text);
                          }
                          catch (e){
                            effectif = 0;
                            budget = 0;
                          }

                          List<Destination> search = [];
                          for(int i=0; i<AffichageDestination().destination.length; i++){
                            if((AffichageDestination().destination[i].price) * effectif <= budget){
                              search.add(AffichageDestination().destination[i]);
                            }
                          }
                          if(search.isEmpty || effectif == 0 || budget == 0){
                            msg = 'Aucune proposition possible';
                            proposition = [];
                          }
                          else {
                            msg = 'Voici le(s) proposition(s)';
                            proposition = search;
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                      ),
                      child: const Text(
                        'Valider',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              msg,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0),
            AffichageDestination().afficher(proposition, context)
          ],
        ),
      ),
    );
  }
}
