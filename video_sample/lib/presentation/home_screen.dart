import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_sample/domain/model/movie.dart';
import 'package:video_sample/presentation/components/movie_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Video Player Sample'),
        ),
        body: Column(          children: [
            if (chewieController == null)
              const CircularProgressIndicator()
            else
              AspectRatio(aspectRatio: videoPlayerController.value.aspectRatio,
              child: Chewie(controller: chewieController!)),
            ListView(
              shrinkWrap: true,
              children: [
                MovieItem(
                  movie: Movie(
                      title: '나비',
                      url:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
                ),
                MovieItem(
                  movie: Movie(
                      title: '벌',
                      url:
                      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
                ),

              ],
            )
          ],
        ));
  }
}
