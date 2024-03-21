import 'package:get/get.dart';

class DashBoardController extends GetxController {
  RxInt indexBar = RxInt(0);

  void setSelectedIndexPage({int index = 0}) {
    indexBar.value = index;
  }
}