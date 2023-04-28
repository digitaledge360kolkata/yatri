
import 'package:get/get.dart';

class IndexController extends GetxController{
  int currentIndex = 0;

  void changeIndex(int newIndex){
    currentIndex = newIndex;
    refresh();
  }
}