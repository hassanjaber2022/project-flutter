// // // import 'package:video_player/video_player.dart';

// // // void main() => runApp(const VideoApp());

// // // /// Stateful widget to fetch and then display video content.
// // // class VideoApp extends StatefulWidget {
// // //   const VideoApp({super.key});

// // //   @override
// // //   _VideoAppState createState() => _VideoAppState();
// // // }

// // // class _VideoAppState extends State<VideoApp> {
// // //   late VideoPlayerController _controller;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _controller = VideoPlayerController.networkUrl(Uri.parse(
// // //         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
// // //       ..initialize().then((_) {
// // //         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
// // //         setState(() {});
// // //       });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Video Demo',
// // //       home: Scaffold(
// // //         body: Center(
// // //           child: _controller.value.isInitialized
// // //               ? AspectRatio(
// // //                   aspectRatio: _controller.value.aspectRatio,
// // //                   child: VideoPlayer(_controller),
// // //                 )
// // //               : Container(),
// // //         ),
// // //         floatingActionButton: FloatingActionButton(
// // //           onPressed: () {
// // //             setState(() {
// // //               _controller.value.isPlaying
// // //                   ? _controller.pause()
// // //                   : _controller.play();
// // //             });
// // //           },
// // //           child: Icon(
// // //             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   void dispose() {
// // //     super.dispose();
// // //     _controller.dispose();
// // //   }
// // // }

// // import 'package:firebase/main.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyWidget extends StatefulWidget {
// //   const MyWidget({super.key});

// //   @override
// //   State<MyWidget> createState() => _MyWidgetState();
// // }

// // class _MyWidgetState extends State<MyWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
// import 'package:flutter_youtube/flutter_youtube.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    // _controller = VideoPlayerController.asset('images/ph12.mp4/')
    //   ..initialize().then((_) => {setState(() {})});
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hjkmnbgyuikjhvfdyhg'),
      ),
      body: content(),
      floatingActionButton: FloatingActionButton(
          child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          }),
    );
  }

  Widget content() {
    return Center(
      child: Container(
        height: 350,
        width: 350,
        child: _controller.value.isInitialized
            ? VideoPlayer(_controller)
            : Container(),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   final String videoUrl = 'https://www.youtube.com/watch?v=YOUR_VIDEO_ID';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('YouTube Video'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               FlutterYoutube.playYoutubeVideoByUrl(
//                 apiKey: 'YOUR_YOUTUBE_API_KEY',
//                 videoUrl: videoUrl,
//               );
//             },
//             child: Text('Play Video'),
//           ),
//         ),
//       ),
//     );
//   }
// }
