import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/validation.dart';
import 'package:eroyal/app/core/widgets/auth_header.dart';
import 'package:eroyal/app/core/widgets/formfield.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/widgets/submit_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with Validation {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: controller.loginKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: AuthHeader(),
              ),
              EText(
                'Email or Phone Number',
                color: primary,
                style: EFonts.montserrat(6, 18),
              ),
              const ESizedBox(height: 8),
              EFormField(
                controller: controller.emailOrPhoneNumber,
              ),
              const ESizedBox(height: 24),
              EText(
                'Password',
                color: primary,
                style: EFonts.montserrat(6, 18),
              ),
              const ESizedBox(
                height: 8,
              ),
              EFormField(
                controller: controller.password,
                validator: passwordRequired,
                keyboardType: TextInputType.visiblePassword,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: EText(
                    'Forgot Password',
                    color: primary,
                    style: EFonts.montserrat(4, 14),
                  ),
                ),
              ),
              const ESizedBox(
                height: 40,
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
      ),
    );
  }
}
