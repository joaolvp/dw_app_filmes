import 'package:app_filmes/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  //final controller = Get.find<LoginController>();
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 48,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: ElevatedButton(
                    onPressed: () => controller.login(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(42),
                      shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))
                      ), 
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Image.asset('assets/images/icon_google.png'))),

                        const Expanded(
                            flex: 4,
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text('Entrar com o Google',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff515151),),),
                            )),

                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        )
                      ],
                    ),),
                ),
                /* Obx((){
                  return Text(controller.nome.value, style: const TextStyle(color: Colors.white, fontSize: 20),);
                }) */
                
              ],
            ),
          )
        ],
      ) 
    );
  }
}