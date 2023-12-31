import 'package:app_filmes/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashPage extends StatelessWidget {
  final controller = Get.find<SplashController>();
  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover)
          ),
          child: Image.asset('assets/images/logo.png')
        ))
    );
  }
}