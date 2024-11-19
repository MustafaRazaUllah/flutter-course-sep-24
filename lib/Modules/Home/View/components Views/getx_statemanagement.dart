import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorAppScreen extends StatelessWidget {
  const CalculatorAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          "Calculator App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.335,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          context,
                          title: "AC",
                          buttonColor: Colors.grey,
                          textColor: Colors.black,
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "+/-",
                          buttonColor: Colors.grey,
                          textColor: Colors.black,
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "%",
                          buttonColor: Colors.grey,
                          textColor: Colors.black,
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "/",
                          buttonColor: Colors.orange,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          context,
                          title: "7",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "8",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "9",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "X",
                          buttonColor: Colors.orange,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          context,
                          title: "4",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "5",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "6",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "-",
                          buttonColor: Colors.orange,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          context,
                          title: "1",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "2",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "3",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "+",
                          buttonColor: Colors.orange,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          context,
                          title: "0",
                          width: (MediaQuery.of(context).size.height *
                              0.095 *
                              2.2),
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: ".",
                          onTap: () {},
                        ),
                        _buildButton(
                          context,
                          title: "=",
                          buttonColor: Colors.orange,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String title,
    Color textColor = Colors.white,
    Color? buttonColor,
    double? width,
    required Function() onTap,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.095,
      width: width ?? MediaQuery.of(context).size.height * 0.095,
      // margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
