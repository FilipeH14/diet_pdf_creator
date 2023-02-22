import 'package:get/get.dart';
import 'dinner_controller.dart';

class DinnerBinding implements Bindings {
    @override
    void dependencies() {
        Get.put(DinnerController());
    }
}