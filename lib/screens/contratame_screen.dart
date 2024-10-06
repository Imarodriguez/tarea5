import 'package:flutter/material.dart';

class ContratameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contrátame')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/ima.jpg'), 
            Text('Nombre: Ima Rodriguez'),
            Text('Email: 20211621@itla.com.do'),
            Text('Teléfono: +8496231594'),
          ],
        ),
      ),
    );
  }
}
