import 'package:flutter/material.dart';

class MomentosScreen extends StatelessWidget {
  final List<Map<String, String>> momentos = [
    {'nombre': 'Gazpacho Drogado', 'foto': 'assets/images/gazpacho.jpg', 'video': 'assets/videos/gazpacho.mp4', 'detalles': 'El gazpacho que Pepa le ofrece a sus visitas tiene un papquete de somniferos, porlo que cuando lo ofrece a los policias para qu lo beban, todos quedan dormidos.'},
    {'nombre': 'Persecucion', 'foto': 'assets/images/persecucion.png', 'video': 'assets/videos/persecucion.mp4', 'detalles': 'Lucia va donde Pepa a decirle que deje a su marido tranquilo, y cuando le dejan saber que el se va con su otra amante, decide ir al aeropuerto a matar Ivan porque se esta escapando'},
    {'nombre': 'Los Terroristas', 'foto': 'assets/images/terroristas.jpg', 'video': 'assets/videos/terroristas.mp4', 'detalles': 'Candela llega a casa de Pepa ya que necesita ayuda porque estuvo con un terrorista. Ellas van donde una abogada a ver que pueden hacer y la abogada no las ayuda. Cuando Carlos se entera el decide llamar a la policia y decirles.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Momentos')),
      body: ListView.builder(
        itemCount: momentos.length,
        itemBuilder: (context, index) {
          final momento = momentos[index];
          return ListTile(
            leading: Image.asset(momento['foto']!),
            title: Text(momento['nombre']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleMomento(
                    nombre: momento['nombre']!,
                    foto: momento['foto']!,
                    detalles: momento['detalles']!,
                    video: momento['video']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetalleMomento extends StatelessWidget {
  final String nombre;
  final String foto;
  final String detalles;
  final String video;

  DetalleMomento({required this.nombre, required this.foto, required this.detalles, required this.video});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nombre)),
      body: Column(
        children: [
          Image.asset(foto),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(detalles),
          ),
          // Aquí puedes agregar el video usando el paquete video_player
        ],
      ),
    );
  }
}
