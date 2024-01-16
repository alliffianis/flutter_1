import 'package:belajar_1/app/routes/app_pages.dart';
import 'package:belajar_1/app/widgets/texts.dart';
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
      body: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'ini tulisan normal',
            style: TextStyle(fontSize: 20),
          ),
          Texts.headingXL("Ini Hadding XL", fontFamilies: FontFamilies.plus),
          Texts.headingL(
            "Ini Hadding L",
            fontFamilies: FontFamilies.poppins,
          ),
          Texts.headingM("Ini Hadding M"),
          Texts.headingS("Ini Hadding S"),
          Texts.textL(
            "Ini Text L",
            fontWeights: FontWeights.bold,
          ),
          Texts.textM(
            "Ini Text M",
            fontWeights: FontWeights.bold,
          ),
          Texts.textS(
            "Ini Text S",
            fontWeights: FontWeights.bold,
          ),
          Texts.textXS("Ini Text XS"),
        ]),
      ),
    );
  }
}
