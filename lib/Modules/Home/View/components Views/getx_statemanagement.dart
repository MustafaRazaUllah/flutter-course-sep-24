import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sessiom3flutterproject/Modules/Home/View%20Model/calculator_vm.dart';

class CalculatorAppScreen extends StatelessWidget {
  CalculatorAppScreen({super.key});

  final CalculatorViewModel _controller = Get.put(CalculatorViewModel());

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
            ///
            /// Screen Section
            ///
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.335,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FittedBox(
                        child: Text(
                          _controller.values.isEmpty
                              ? "0"
                              : _controller.values.join(""),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            ///
            /// Buttons Section
            ///
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
                          onTap: _controller.acMethod,
                        ),
                        _buildButton(
                          context,
                          title: "C",
                          buttonColor: Colors.grey,
                          textColor: Colors.black,
                          onTap: () {
                            if (_controller.values.isNotEmpty) {
                              _controller.values.removeLast();
                            }
                          },
                        ),
                        _buildButton(
                          context,
                          title: "%",
                          buttonColor: Colors.grey,
                          textColor: Colors.black,
                          onTap: () => _controller.addValue("%"),
                        ),
                        _buildButton(
                          context,
                          title: "/",
                          buttonColor: Colors.orange,
                          onTap: () => _controller.addValue("/"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(context,
                            title: "7", onTap: () => _controller.addValue("7")),
                        _buildButton(context,
                            title: "8", onTap: () => _controller.addValue("8")),
                        _buildButton(context,
                            title: "9", onTap: () => _controller.addValue("9")),
                        _buildButton(context,
                            title: "X",
                            buttonColor: Colors.orange,
                            onTap: () => _controller.addValue("*")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(context,
                            title: "4", onTap: () => _controller.addValue("4")),
                        _buildButton(context,
                            title: "5", onTap: () => _controller.addValue("5")),
                        _buildButton(context,
                            title: "6", onTap: () => _controller.addValue("6")),
                        _buildButton(context,
                            title: "-",
                            buttonColor: Colors.orange,
                            onTap: () => _controller.addValue("-")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(context,
                            title: "1", onTap: () => _controller.addValue("1")),
                        _buildButton(context,
                            title: "2", onTap: () => _controller.addValue("2")),
                        _buildButton(context,
                            title: "3", onTap: () => _controller.addValue("3")),
                        _buildButton(context,
                            title: "+",
                            buttonColor: Colors.orange,
                            onTap: () => _controller.addValue("+")),
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
                          onTap: () => _controller.addValue("0"),
                        ),
                        _buildButton(
                          context,
                          title: ".",
                          onTap: () {
                            if (!_controller.values.contains(".")) {
                              if (_controller.values.isEmpty) {
                                _controller.values.add("0");
                              }
                              _controller.addValue(".");
                            }
                          },
                        ),
                        _buildButton(
                          context,
                          title: "=",
                          buttonColor: Colors.orange,
                          onTap: _controller.calculateResult,
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
