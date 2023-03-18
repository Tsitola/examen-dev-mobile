import 'package:flutter/material.dart';

class LoadingApp extends StatefulWidget {
  const LoadingApp({Key? key}) : super(key: key);

  @override
  State<LoadingApp> createState() => _LoadingAppState();
}

class _LoadingAppState extends State<LoadingApp> {

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final size = screenWidth / 10;
    final size2 = screenWidth / 15;

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Bonjour',
                    style: TextStyle(
                      fontSize: size,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Votre voyage commence ici',
                    style: TextStyle(
                      fontSize: size2,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('Commencer'),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
