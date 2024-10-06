import 'package:flutter/material.dart';
import 'screens/portada_screen.dart';
import 'screens/personajes_screen.dart';
import 'screens/momentos_screen.dart';
import 'screens/acerca_de_screen.dart';
import 'screens/en_mi_vida_screen.dart';
import 'screens/contratame_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),  // Pantalla inicial de la app
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Portada()),
                );
              },
              child: Text('Portada'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonajesScreen()),
                );
              },
              child: Text('Personajes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MomentosScreen()),
                );
              },
              child: Text('Momentos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AcercaDeScreen()),
                );
              },
              child: Text('Acerca de'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnMiVidaScreen()),
                );
              },
              child: Text('En mi vida'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContratameScreen()),
                );
              },
              child: Text('Contrátame'),
            ),
          ],
        ),
      ),
    );
  }
}
