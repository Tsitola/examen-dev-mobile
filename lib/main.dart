import 'package:flutter/material.dart';

import 'package:examen_mobile/pages/home.dart';
import 'package:examen_mobile/pages/loading.dart';

void main() => runApp(MaterialApp(
  title: 'Voyage',
  initialRoute: '/',
  routes: {
    '/': (context) => const LoadingApp(),
    '/home' : (context) => const Home(),
  },
));


