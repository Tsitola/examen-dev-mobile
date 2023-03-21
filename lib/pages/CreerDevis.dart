import 'package:flutter/material.dart';
import 'package:examen_mobile/services/destination.dart';
import 'package:examen_mobile/services/Affichage.dart';

class CreerDevis extends StatefulWidget {
  const CreerDevis({Key? key}) : super(key: key);

  @override
  State<CreerDevis> createState() => _CreerDevisState();
}

class _CreerDevisState extends State<CreerDevis> {

  double devis = 0;
  String image = 'Turquie1.jpg';
  String msg = 'Veuillez remplir les champs';

  final TextEditingController _controllerEffectif = TextEditingController();
  final TextEditingController _controllerDestination = TextEditingController();

  double effectif = 0;
  String destination = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Creer devis'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$image'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                  msg,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                height: 45.0,
                child: TextField(
                  controller: _controllerDestination,
                  decoration: const InputDecoration(
                    hintText: 'Destination',
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
              const SizedBox(height: 10.0),
              Container(
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
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            destination = _controllerDestination.text.toLowerCase();

                            try{
                              effectif = double.parse(_controllerEffectif.text);
                            }
                            catch (e){
                              effectif = 0;
                            }

                            List<Destination> tmp = [];
                            for(int i=0; i<AffichageDestination().destination.length; i++){
                              if((AffichageDestination().destination[i].name.toLowerCase()) == destination){
                                tmp.add(AffichageDestination().destination[i]);
                              }
                            }
                            if(tmp.isEmpty){
                              devis = 0.0;
                              msg = 'Destination introuvable';
                              image = 'assets/images/unfound.png';
                            }
                            else{
                              if(effectif == 0){
                                msg = 'Effectif non defini';
                              }
                              else{
                                devis = (tmp[0].price * effectif);
                                msg = 'Votre devis est de : $devis';
                                image = tmp[0].img2;
                              }
                            }
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                        ),
                        child: const Text(
                          'Devis',
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
            ],
          ),
        ),
      ),
    );
  }
}
