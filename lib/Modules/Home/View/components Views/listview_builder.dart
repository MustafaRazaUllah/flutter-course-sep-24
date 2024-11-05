import 'package:flutter/material.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/listview.dart';

class ListviewBuilderScreen extends StatelessWidget {
  ListviewBuilderScreen({super.key});

  List<String> dataList = [
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
    "Hello world!",
    "hello jhon,",
    "How are you?",
    "what are you doing",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ListView Builder"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            // Horizental ListView
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(
                    context: context,
                    message: dataList[index],
                  );
                },
              ),
            ),

            // Vertical ListView
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(
                    context: context,
                    isVertical: true,
                    message: dataList[index],
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
