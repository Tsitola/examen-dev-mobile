import 'package:flutter/material.dart';
import 'package:examen_mobile/services/parametre.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final size = screenWidth / 18;
    final size2 = screenWidth / 20;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Préparation de Voyage',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: param.length,
        itemBuilder: (context, index){
          return Center(
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, param[index].route);
                },
                title: Text(
                    param[index].name,
                  style: TextStyle(
                    fontSize: size2,
                  ),
                ),
                leading: param[index].icons,
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: Text(
          'Version Beta',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}