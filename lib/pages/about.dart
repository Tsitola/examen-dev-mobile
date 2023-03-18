import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('About'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Tsitola.jpg'),
                  radius: 40.0,
                ),
                SizedBox(height: 15.0),
                Text(
                  'NOMENJANAHARY Tsitola Fifaliana',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'TCO M1 - STM',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'tsito.fifa@gmail.com',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Solohery.jpg'),
                  radius: 40.0,
                ),
                SizedBox(height: 15.0),
                Text(
                  'RANDRIATSIZAFY Solohery Sarobidy',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'TCO M1 - STM',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'sarubidrandriantsizafy@gmail.com',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

