import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jorday/app/repo/home/service/home_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void testPost() {
    var login = HomeService.postLogin(username.text, password.text);

  }
}
