import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back Navigate"),
            ),
            // Horizental ListView
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                children: [
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    message: "what are you doing",
                  ),
                ],
              ),
            ),

            // Vertical ListView
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                children: [
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "Hello world!",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "hello jhon,",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "How are you?",
                  ),
                  buildCard(
                    context: context,
                    isVertical: true,
                    message: "what are you doing",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCard({
  required BuildContext context,
  required String message,
  bool isVertical = false,
}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    margin: isVertical
        ? const EdgeInsets.only(bottom: 10)
        : const EdgeInsets.only(right: 10),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}
