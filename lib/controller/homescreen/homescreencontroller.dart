import 'package:get/get.dart';
import 'package:hellastore/model/productmodel.dart';
import 'package:video_player/video_player.dart';

class HomeScreenController extends GetxController {
  List<ProductModel> productlist = List.generate(
      20,
      (index) => ProductModel(
          image: "assets/images/item.jpg",
          title: "product $index",
          price: index * 10,
          oldprice: (index * 10) - 5));
  
  late VideoPlayerController videoPlayerController;

  @override
  void onInit() {
    videoPlayerController =
        VideoPlayerController.asset("assets/images/video.mp4")
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            update();
          });
    super.onInit();
  }

  // List<bool> expandedList = List.generate(5, (index) => false);

  // void toggleExpanded(int index) {
  //   expandedList[index] = !expandedList[index];
  //   update();
  // }

  // bool iu = false;
  // late int ine;
  // onhover(i, index) {
  //   iu = i;
  //   ine = index;
  //   update();
  // }
}
