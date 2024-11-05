import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  GridViewBuilderScreen({super.key});

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
        title: const Text("GridView Builder"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            // // Horizental ListView
            SizedBox(
              height: 250,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildTile(
                    title: dataList[index],
                    horizentalColor: Colors.green,
                  );
                },
              ),
            ),

            const SizedBox(height: 10),
            // Vertical ListView
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildTile(
                    title: dataList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile({
    required String title,
    Color horizentalColor = Colors.red,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: horizentalColor,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
