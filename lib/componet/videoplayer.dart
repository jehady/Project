import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class videoplayer extends StatefulWidget {
  const videoplayer({super.key});

  @override
  State<videoplayer> createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {
  late CustomVideoPlayerController _cuvidep;
  String assetsvideoPATH = "assets/video/ahyalil.mp4";
  @override
  void initState() {
    super.initState();
    initialzeVideoPlayer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.red,
            child: CustomVideoPlayer(
              customVideoPlayerController: _cuvidep,
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.01,
          // ),
          // Container(
          //     height: MediaQuery.of(context).size.height * 0.15,
          //     width: MediaQuery.of(context).size.width * 0.9,
          //     color: Colors.white,
          //     child: GridView.builder(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 3),
          //       itemCount: 9,
          //       itemBuilder: (context, index) {
          //         return TextButton(
          //           onPressed: () {
          //             print("adsadsvghghghgh");
          //           },
          //           child: Container(
          //             width: MediaQuery.of(context).size.width * 0.3,
          //             color: Colors.green,
          //           ),
          //         );
          //       },
          //     )),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.02,
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.4,
          //   width: MediaQuery.of(context).size.width * 0.9,
          //   color: Colors.black,
          // ),
          // // Container(
          // //   height: MediaQuery.of(context).size.height * 0.1,
          // //   width: MediaQuery.of(context).size.width * 0.9,
          // //   color: Colors.yellow,
          // // ),
        ],
      ),
    );
  }

  void initialzeVideoPlayer() {
    VideoPlayerController _videoPlyCon;
    _videoPlyCon = VideoPlayerController.asset(assetsvideoPATH)
      ..initialize().then((value) => setState(() {}));
    _cuvidep = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlyCon);
  }
}
