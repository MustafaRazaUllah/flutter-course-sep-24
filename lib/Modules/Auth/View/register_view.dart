import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sessiom3flutterproject/Modules/Auth/View%20Model/register_viewmodel.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _controller = Get.put(RegisterViewmodel());

  bool isVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Register Screen",
        ),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Please enter your\nemail and password.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller.nameRegister.value,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Please Enter FullName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller.addressRegister.value,
                  decoration: InputDecoration(
                    labelText: "Address",
                    hintText: "Please Enter Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller.phoneRegister.value,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Please Enter Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller.emailRegister.value,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: _controller.passwordRegister.value,
                  obscureText: !isVisibility,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisibility = !isVisibility;
                        });
                      },
                      icon: Icon(
                        isVisibility ? Icons.visibility : Icons.visibility_off,
                        color: isVisibility ? Colors.amber : Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    _controller.onRegisterUser();
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already a member?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
