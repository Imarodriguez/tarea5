import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';  // Importa el paquete correcto

class EnMiVidaScreen extends StatefulWidget {
  @override
  _EnMiVidaScreenState createState() => _EnMiVidaScreenState();
}

class _EnMiVidaScreenState extends State<EnMiVidaScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/fav.mov')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
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
            : CircularProgressIndicator(),
      ),
    );
  }
}
