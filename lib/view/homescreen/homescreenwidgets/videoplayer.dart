// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import 'package:hellastore/controller/homescreen/homescreencontroller.dart';

class VideoPlayerScreen extends StatelessWidget {
 final bool st;
   VideoPlayerScreen({
    Key? key,
    required this.st,
  }) : super(key: key);
 final HomeScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (controller) {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: st ? 150 : 30),
        child: controller.videoPlayerController.value.isInitialized
            ? Stack(
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      AspectRatio(
                        aspectRatio:
                            controller.videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(controller.videoPlayerController),
                      ),
                      VideoProgressIndicator(
                        controller.videoPlayerController,
                        allowScrubbing: true,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        colors: const VideoProgressColors(
                            backgroundColor: Colors.blue,
                            playedColor: Colors.red),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        if (controller.videoPlayerController.value.isPlaying) {
                          controller.videoPlayerController.pause();
                          controller.update();
                        } else if (controller
                            .videoPlayerController.value.isCompleted) {
                          controller.videoPlayerController.play();
                          controller.update();
                        } else {
                          controller.videoPlayerController.play();
                          controller.update();
                        }
                      },
                      icon: Icon(
                        controller.videoPlayerController.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        size: st ? 100 : 50,
                      )),
                ],
              )
            : const SizedBox(),
      );
    });
  }
}
