import 'package:get/get.dart';
// GetBuilder
// class RebuildController extends GetxController {
//   int count1 = 0;
//   int count2 = 0;
//
//   void incrementOne() {
//     count1++;
//     update();
//   }
//
//   void incrementTwo() {
//     count2++;
//     update();
//   }
//
//   void decrementOne() {
//     count1--;
//     update();
//   }
//
//   void decrementTwo() {
//     count2--;
//     update();
//   }
//
//   int sum() => count1 + count2;
// }

class RebuildController extends GetxController {
  RxInt count1 = 0.obs;
  RxInt count2 = 0.obs;

  void incrementOne() {
    count1++;
  }

  void incrementTwo() {
    count2++;
  }

  void decrementOne() {
    count1--;
  }

  void decrementTwo() {
    count2--;
  }

  sum() => count1.value + count2.value;
}
