import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  final user = FirebaseAuth.instance.currentUser!;
}
