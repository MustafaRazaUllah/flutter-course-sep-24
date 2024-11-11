import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sessiom3flutterproject/Common/Button/primery_button.dart';
import 'package:sessiom3flutterproject/Utils/customtoast.dart';

class ToastDatepickerView extends StatelessWidget {
  const ToastDatepickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Toast, Datepicker"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Toast Below"),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                PrimeryButton(
                  title: 'Show SnackBar',
                  onTap: () {
                    Customtoast.warning("This is an warning Toast");
                  },
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("DatePicker Below"),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                PrimeryButton(
                  title: 'Show DatePicker',
                  onTap: () async {
                    var datetime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1998),
                      lastDate: DateTime(2400),
                    );

                    print(datetime.toString().substring(0, 10));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
