import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/view/cart.dart';
import 'package:store_app/view/home_page.dart';
import 'package:store_app/view/UserPage.dart';

class LandingPageController extends GetxController {
  var tabIndex = 0;
    DateTime? _lastPressed;

  Widget currentTab = HomePage();

  void changTabIndex(int index) {
    tabIndex = index;
    update();
  }

 Future<bool> onWillPop() async {
    if (tabIndex != 0) {
      tabIndex = 0;
      update();
      changPage(0);

      return false; // عدم الخروج من التطبيق
    }

    DateTime now = DateTime.now();
    if (_lastPressed == null ||
        now.difference(_lastPressed!) > Duration(seconds: 2)) {
      _lastPressed = now;
       Get.rawSnackbar(message: "double click to exit'", duration: Duration(seconds: 2));
      ;
      return false; // منع الخروج
    }
    return true; // الخروج من التطبيق
  }


  void changPage(int index) {
    switch (index) {
      case 0:
        currentTab = HomePage();
        update();

        break;
      case 1:
        currentTab = Cart();
        update();

        break;
      case 2:
        currentTab = UserPage();
        update();

        break;
      default:
    }
    update();
  }
}
