import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/alarts_dialogboxs.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/checkbox_radio_switch.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/getx_statemanagement.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/gridview_builder.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/listview.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/listview_builder.dart';
import 'package:sessiom3flutterproject/Modules/Home/View/components%20Views/stack_view.dart';

import 'components Views/task_18_11_24.dart';
import 'components Views/toast_datepicker_view.dart';

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
                Get.to(() =>
                    const ListviewScreen()); // one to next and back same screen.
                // Get.off(() =>
                //     const ListviewScreen()); // one to next and back one previous screen.
                // Get.offAll(() => const ListviewScreen());
                // Get.back();
                // Get.close(3);
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
            _buildCard(
              title: "Alerts and Dialog boxes.",
              color: Colors.pink,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlartsDialogboxs(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "Check Box, Radio Button and Switch",
              color: Colors.blue,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckboxRadioSwitch(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "Toasts and Date Time Picker",
              color: Colors.blueGrey,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ToastDatepickerView(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "Task 18/11/24",
              color: Colors.blueGrey,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Task181124View(),
                  ),
                );
              },
            ),
            _buildCard(
              title: "Calculator App",
              color: Colors.purpleAccent,
              textColor: Colors.white,
              onTap: () {
                Get.to(() => CalculatorAppScreen());
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
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
