import 'package:belajar_1/app/routes/app_pages.dart';
import 'package:belajar_1/app/widgets/buttons.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'ini tulisan normal',
              style: TextStyle(fontSize: 20),
            ),
            Texts.headingXL("Ini Hadding XL",
                fontFamilies: FontFamilies.poppins),
            Texts.headingL(
              "Ini Hadding L",
              fontFamilies: FontFamilies.poppins,
            ),
            Texts.headingM("Ini Hadding M", fontFamilies: FontFamilies.poppins),
            Texts.headingS("Ini Hadding S", fontFamilies: FontFamilies.poppins),
            Texts.textL("Ini Text L",
                fontWeights: FontWeights.bold,
                fontFamilies: FontFamilies.poppins),
            Texts.textM(
              "Ini Text M",
              fontWeights: FontWeights.medium,
              fontFamilies: FontFamilies.poppins,
              color: Colors.cyan,
            ),
            Texts.textS(
              "Ini Text S",
              fontWeights: FontWeights.regular,
              fontFamilies: FontFamilies.poppins,
            ),
            Texts.textXS(
              "Ini Text XS",
              fontWeights: FontWeights.semiBold,
              fontFamilies: FontFamilies.poppins,
            ),
            Buttons.buttonPrimary(
              text: "Button Medium",
              buttonSize: ButtonSize.medium,
              onPressed: () {
                Get.toNamed(Routes.HOME);
                print(
                  "object",
                );
              },
            ),
            Buttons.buttonSecondary(
              text: "Button Small",
              buttonSize: ButtonSize.medium,
              onPressed: () {
                // Get.toNamed(Routes.HOME);
                print(
                  "object",
                );
              },
            ),
            Buttons.buttonOutline(
              text: "Button Outline",
              buttonSize: ButtonSize.medium,
              onPressed: () {
                // Get.toNamed(Routes.HOME);
                print(
                  "object",
                );
              },
            ),
            Center(
              child: Buttons.buttonTextss(
                text: "Button Text",
                // buttonSize: ButtonSize.medium,
                onTap: () {
                  // Get.toNamed(Routes.HOME);
                  print(
                    "object",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
