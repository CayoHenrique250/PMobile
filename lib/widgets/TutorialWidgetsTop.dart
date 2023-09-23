import 'package:flutter/material.dart';
import 'package:projeto/domain/tutorial.dart';
import 'package:projeto/widgets/CircularProgress.dart';
import 'package:video_player/video_player.dart';

class TutorialWidgetsTop extends StatefulWidget {
  final TutorialWidgets tutorialWidgets;

  const TutorialWidgetsTop({
    Key? key,
    required this.tutorialWidgets,
  }) : super(key: key);

  @override
  State<TutorialWidgetsTop> createState() => _TutorialWidgetsTopState();
}

class _TutorialWidgetsTopState extends State<TutorialWidgetsTop> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.tutorialWidgets.video)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      VideoPlayer(_controller),
                      IconButton(
                        icon: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 50,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            } else {
                              _controller.play();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                )
              : const CircularProgress(),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              widget.tutorialWidgets.titulo,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C3509),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
              padding: const EdgeInsets.only(right: 0),
              child: Text(
                widget.tutorialWidgets.texto,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ) 
            
          ),
          Container(
            padding: const EdgeInsets.only(right: 220),
            child: Text(
              widget.tutorialWidgets.titulo2,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C3509),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
