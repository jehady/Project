import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  @override
  checkCode() {}

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
