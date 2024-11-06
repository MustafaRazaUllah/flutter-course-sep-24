import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessiom3flutterproject/Common/Button/primery_button.dart';

class AlartsDialogboxs extends StatelessWidget {
  const AlartsDialogboxs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Alarts and Dialogboxs"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimeryButton(
                height: 45,
                title: 'Android Alart Box',
                btnColor: Colors.white,
                textColor: Colors.black,
                btnBorderRadius: 100,
                onTap: () {
                  _showMyDialogAndroid(context);
                },
              ),
              const SizedBox(height: 100),
              PrimeryButton(
                height: 45,
                title: 'iOS Alart Box',
                btnColor: Colors.white,
                textColor: Colors.black,
                btnBorderRadius: 15,
                onTap: () {
                  _showMyDialogiOS(context);
                },
              ),
              const SizedBox(height: 100),
              PrimeryButton(
                height: 45,
                title: 'Dialog Box',
                btnColor: Colors.white,
                textColor: Colors.black,
                btnBorderRadius: 15,
                onTap: () {
                  _showMyDialogCustom(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialogAndroid(
    BuildContext context,
  ) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('yes'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('no'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialogiOS(
    BuildContext context,
  ) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('yes'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('no'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialogCustom(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.black,
          contentPadding: const EdgeInsets.all(15),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Set to min to wrap content height
              children: [
                const Text(
                  "Delete Account",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Are you sure want to delete your account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: PrimeryButton(
                        title: "Confirm",
                        btnColor: Colors.white,
                        btnBorderColor: Colors.white,
                        textColor: Colors.black,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: PrimeryButton(
                        title: "Cancel",
                        btnColor: Colors.black,
                        btnBorderColor: Colors.white,
                        textColor: Colors.white,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Future<void> _showMyDialogCustom(
  //   BuildContext context,
  // ) async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: true, // user must tap button!
  //     builder: (BuildContext context) {
  //       return Container(
  //         // height: 200,
  //         width: double.infinity,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(20),
  //           color: Colors.black,
  //         ),
  //         padding: const EdgeInsets.all(15),
  //         child: SingleChildScrollView(
  //           child: Column(
  //             mainAxisSize: MainAxisSize.max,

  //             // mainAxisAlignment: MainAxisAlignment.center,
  //             // crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               const Text(
  //                 "Delete Account",
  //                 style: TextStyle(
  //                   decoration: TextDecoration.none,
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //               const SizedBox(height: 40),
  //               const Text(
  //                 "Are you sure want to delete your account?",
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(
  //                   decoration: TextDecoration.none,
  //                   color: Colors.white,
  //                   fontSize: 15,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //               const SizedBox(height: 40),
  //               Row(
  //                 children: [
  //                   Expanded(
  //                     child: PrimeryButton(
  //                       title: "Confirm",
  //                       btnColor: Colors.white,
  //                       btnBorderColor: Colors.white,
  //                       textColor: Colors.black,
  //                       onTap: () {
  //                         Navigator.pop(context);
  //                       },
  //                     ),
  //                   ),
  //                   const SizedBox(width: 20),
  //                   Expanded(
  //                     child: PrimeryButton(
  //                       title: "Cancel",
  //                       btnColor: Colors.black,
  //                       btnBorderColor: Colors.white,
  //                       textColor: Colors.white,
  //                       onTap: () {
  //                         Navigator.pop(context);
  //                       },
  //                     ),
  //                   ),
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
