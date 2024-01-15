import 'package:belajar_1/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Ojan Ganteng',
            style: TextStyle(fontSize: 20),
            
          ),
          ElevatedButton(onPressed: () {
            print("Huhaaaa");
            Get.toNamed(Routes.LOGIN);
          }, child:Text(
            'button',
            style: TextStyle(fontSize: 20),
            
          ),)
        ],
      ),
    );
  }
}
