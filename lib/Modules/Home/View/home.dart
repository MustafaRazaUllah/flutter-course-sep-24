import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/gridview_builder.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/listview.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/listview_builder.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/stack_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Home Screen"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 20 / 9,
          children: <Widget>[
            _buildCard(
              title: "ListView",
              color: Colors.red,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListviewScreen(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "ListView Builder",
              color: Colors.green,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListviewBuilderScreen(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "GridView Builder",
              color: Colors.yellow,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewBuilderScreen(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "Stack",
              color: Colors.purple,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StackView(),
                  ),
                );
              },
            ),
          ],
        ),
        // Column(
        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       decoration: BoxDecoration(
        //         color: Colors.green,
        //         borderRadius: BorderRadius.circular(30),
        //       ),
        //       padding: const EdgeInsets.all(20),
        //       child: Container(
        //         height: 300,
        //         width: 300,
        //         decoration: BoxDecoration(
        //           color: Colors.purple,
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //         child: const Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Hello",
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.w700,
        //               ),
        //             ),
        //             Text(
        //               "World",
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.w700,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required Color color,
    Color textColor = Colors.black,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
