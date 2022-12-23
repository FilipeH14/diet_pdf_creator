import 'package:diet_pdf_creator/app/repositories/login/login_repository.dart';
import 'package:diet_pdf_creator/app/repositories/login/login_repository_impl.dart';
import 'package:diet_pdf_creator/app/services/login/login_service.dart';
import 'package:diet_pdf_creator/app/services/login/login_service_impl.dart';
import 'package:diet_pdf_creator/app/shared/auth/auth_service.dart';
import 'package:get/get.dart';

class GlobalBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(loginRepository: Get.find()),
      fenix: true,
    );
    Get.put(AuthService()).init();
  }
}
