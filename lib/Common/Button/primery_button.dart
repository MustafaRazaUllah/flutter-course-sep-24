import 'package:flutter/material.dart';

class PrimeryButton extends StatelessWidget {
  final String title;
  final double height;
  final Color btnColor;
  final Color btnBorderColor;
  final Color textColor;
  final double btnBorderRadius;
  final double btnBorderWidth;
  final double textSize;
  final Function? onTap;

  const PrimeryButton({
    super.key,
    required this.title,
    this.height = 50,
    this.btnColor = Colors.black,
    this.btnBorderColor = Colors.black,
    this.textColor = Colors.white,
    this.btnBorderRadius = 100,
    this.btnBorderWidth = 1,
    this.textSize = 15,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: btnColor,
      borderRadius: BorderRadius.circular(btnBorderRadius),
      elevation: 20.0,
      child: InkWell(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        borderRadius: BorderRadius.circular(btnBorderRadius),
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
              color: btnColor,
              borderRadius: BorderRadius.circular(btnBorderRadius),
              border: Border.all(
                color: btnBorderColor,
                width: btnBorderWidth,
              )),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: textSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
