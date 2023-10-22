
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeScreenController extends GetxController {
 late VideoPlayerController videoPlayerController;

  @override
  void onInit() {
     videoPlayerController = VideoPlayerController.asset("assets/images/video.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
       update();
      });
    super.onInit();
  }
  
   
  bool iu = false;
  late int ine;
  onhover(i, index) {
    iu = i;
    ine = index;
    update();
  }
}
