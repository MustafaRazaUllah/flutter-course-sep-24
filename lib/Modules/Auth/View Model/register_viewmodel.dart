import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sessiom3flutterproject/Modules/Auth/Service/auth_serivce.dart';
import 'package:sessiom3flutterproject/Utils/customtoast.dart';

import '../../Home/View/home.dart';

class RegisterViewmodel extends GetxController with AuthSerivce {
  var emailRegister = TextEditingController().obs;
  var passwordRegister = TextEditingController().obs;
  var nameRegister = TextEditingController().obs;
  var phoneRegister = TextEditingController().obs;
  var addressRegister = TextEditingController().obs;

  Future<void> onRegisterUser() async {
    if (nameRegister.value.text.isEmpty) {
      Customtoast.error("Fullname is Required");
      return;
    }

    if (addressRegister.value.text.isEmpty) {
      Customtoast.error("Address is Required");
      return;
    }
    if (phoneRegister.value.text.isEmpty) {
      Customtoast.error("Phone Number is Required");
      return;
    }
    if (emailRegister.value.text.isEmpty) {
      Customtoast.error("Email is Required");
      return;
    }
    if (passwordRegister.value.text.isEmpty) {
      Customtoast.error("Password is Required");
      return;
    }

    bool isRegistered = await registerUserService(
      email: emailRegister.value.text,
      password: passwordRegister.value.text,
      name: nameRegister.value.text,
      phone: phoneRegister.value.text,
      address: addressRegister.value.text,
    );

    if (isRegistered) {
      Get.offAll(() => const HomeView());
    }
  }
}
