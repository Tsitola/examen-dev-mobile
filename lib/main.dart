import 'package:flutter/material.dart';

import 'package:examen_mobile/pages/home.dart';
import 'package:examen_mobile/pages/loading.dart';
import 'package:examen_mobile/pages/about.dart';
import 'package:examen_mobile/pages/CreerDevis.dart';
import 'package:examen_mobile/pages/DevisAuto.dart';
import 'package:examen_mobile/pages/decouverte.dart';

void main() => runApp(MaterialApp(
  title: 'Voyage',
  initialRoute: '/',
  routes: {
    '/': (context) => const LoadingApp(),
    '/home' : (context) => const Home(),
    '/découverte' : (context) => const Decouverte(),
    '/créer_devis' : (context) => const CreerDevis(),
    '/devis_auto' : (context) => const DevisAuto(),
    '/about' : (context) => const About(),
  },
));


