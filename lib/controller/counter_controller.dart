import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  increase() async {
    counter.value++;
    update();
  }

  descrease() async {
    counter.value--;
    update();
  }
}
