import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Stack View"),
        backgroundColor: Colors.white,
      ),
      body: const SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "H",
              style: TextStyle(
                color: Colors.red,
                fontSize: 150,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "H",
              style: TextStyle(
                color: Colors.green,
                fontSize: 150,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "H",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 150,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
