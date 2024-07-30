import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/core/viewmodel/AuthenticationManager%20.dart';
import 'package:store_app/view/auth/logInPage.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationManager authManager = Get.find();
    return Obx(() {
      print("kkkkkkkkk      ${authManager.isLogged.value}    kkkkkkkkk");

      return 
      // authManager.isLogged.value ? LandingPage() :
       LogIn();
    });
  }
}
