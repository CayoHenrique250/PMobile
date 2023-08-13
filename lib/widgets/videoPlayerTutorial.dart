import 'package:flutter/material.dart';
import 'package:projeto/domain/tutorial.dart';
import 'package:projeto/widgets/CircularProgress.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerTutoriais extends StatefulWidget {
  final TutorialVideo tutorialVideo;

  const VideoPlayerTutoriais({
    Key? key,
    required this.tutorialVideo,
  }) : super(key: key);

  @override
  State<VideoPlayerTutoriais> createState() => _VideoPlayerTutoriaisState();
}

class _VideoPlayerTutoriaisState extends State<VideoPlayerTutoriais> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.tutorialVideo.video)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
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
              : CircularProgress(),
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
