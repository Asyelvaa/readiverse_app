import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  late TextEditingController ctrUsername;
  late TextEditingController ctrPassword;
  final RxBool isObsecure = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ctrUsername = new TextEditingController();
    ctrPassword = new TextEditingController();

  }

  void togglePasswordVisibility() {
    isObsecure.value = !isObsecure.value;
  }
}
