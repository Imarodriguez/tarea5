import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Portada extends StatefulWidget {
  @override
  _PortadaState createState() => _PortadaState();
}

class _PortadaState extends State<Portada> {
  late VideoPlayerController _controller; // Marca como 'late'

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/intro.mov')
      ..initialize().then((_) {
        setState(() {}); // Actualiza el estado para construir el widget
        _controller.play(); 
      });
  }

  @override
  void dispose() {
    _controller.dispose(); // Libera los recursos del controlador
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(), // Muestra un indicador de carga mientras se inicializa
      ),
    );
  }
}
