import 'dart:ffi';

import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/validation.dart';
import 'package:eroyal/app/core/widgets/auth_header.dart';
import 'package:eroyal/app/core/widgets/formfield.dart';
import 'package:eroyal/app/core/widgets/image_picture.dart';
import 'package:eroyal/app/core/widgets/padding.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/widgets/submit_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with Validation {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Image.asset(imgBgLogin),
            const Align(alignment: Alignment.topCenter, child: AuthHeader()),
            const Align(
              alignment: Alignment.center,
              child: EImages(
                name: imgLogo,
                width: 150,
              ),
            ),
            Obx(
              () => Align(
                alignment: controller.isFocus.value == false
                    ? Alignment.bottomCenter
                    : Alignment.center,
                child: EPadding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Form(
                    key: controller.loginKey,
                    child: SingleChildScrollView(
                      padding: controller.isFocus.value == false
                          ? EdgeInsets.zero
                          : const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.w,
                              vertical: 50.h,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 3,
                                  offset: Offset(1, 1),
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EText(
                                  'Username',
                                  color: primary,
                                  style: EFonts.montserrat(7, 14),
                                ),
                                const ESizedBox(height: 8),
                                EFormField(
                                  focusNode: controller.focusNode,
                                  hintText: "Input Username",
                                  controller: controller.username,
                                  validator: usernameRequired,
                                ),
                                const ESizedBox(height: 24),
                                EText(
                                  'Password',
                                  color: primary,
                                  style: EFonts.montserrat(7, 14),
                                ),
                                const ESizedBox(
                                  height: 8,
                                ),
                                EFormField(
                                  hintText: "Input Password",
                                  controller: controller.password,
                                  validator: passwordRequired,
                                  keyboardType: TextInputType.visiblePassword,
                                ),
                                const ESizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      EText(
                                        'Forgot Password?',
                                        color: primary,
                                        style: EFonts.montserrat(5, 14),
                                      ),
                                      Container(
                                        width: 125,
                                        height: 1,
                                        decoration: const BoxDecoration(
                                            color: Color(0xFF313352)),
                                      ),
                                    ],
                                  ),
                                ),
                                const ESizedBox(
                                  height: 20,
                                ),
                                ESubmitButton(
                                  color: primary,
                                  onTap: controller.login,
                                  large: true,
                                  action: "Login",
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   height: 400.h,
                          //   decoration: ShapeDecoration(
                          //       color: white,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(15),
                          //       ),
                          //       shadows: const [
                          //         BoxShadow(
                          //           color: Color(0x3F000000),
                          //           blurRadius: 3,
                          //           offset: Offset(1, 1),
                          //           spreadRadius: 1,
                          //         )
                          //       ]),
                          //   child: Column(
                          //     children: [
                          //       EText(
                          //         'Username',
                          //         color: primary,
                          //         style: EFonts.montserrat(6, 18),
                          //       ),
                          //       const ESizedBox(height: 8),
                          //       EFormField(
                          //         controller: controller.username,
                          //         validator: usernameRequired,
                          //       ),
                          //       const ESizedBox(height: 24),
                          //       EText(
                          //         'Password',
                          //         color: primary,
                          //         style: EFonts.montserrat(6, 18),
                          //       ),
                          //       const ESizedBox(
                          //         height: 8,
                          //       ),
                          //       EFormField(
                          //         controller: controller.password,
                          //         validator: passwordRequired,
                          //         keyboardType: TextInputType.visiblePassword,
                          //       ),
                          //       TextButton(
                          //         onPressed: () {
                          //           Get.toNamed(Routes.FORGOT_PASSWORD);
                          //         },
                          //         child: EText(
                          //           'Forgot Password',
                          //           color: primary,
                          //           style: EFonts.montserrat(4, 14),
                          //         ),
                          //       ),
                          //       const ESizedBox(
                          //         height: 60,
                          //       ),
                          //       ESubmitButton(
                          //         color: primary,
                          //         onTap: controller.login,
                          //         large: true,
                          //         action: "Login",
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
