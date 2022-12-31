import 'package:get/get.dart';
import './end_document_controller.dart';

class EndDocumentBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EndDocumentController());
  }
}
