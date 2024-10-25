import 'package:flutter/material.dart';
import 'package:sessiom3flutterproject/Modules/Auth/View/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        print("Delay");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginView()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
          child: Stack(
        children: [
          Image.asset(
            "assets/splash.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height, // double.infinity,
            width: MediaQuery.of(context).size.width, // double.infinity,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Food App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
