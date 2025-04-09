import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final Widget child;

  CustomAlertDialog({required this.child});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    double dialogWidth;
    if (width < 600) {
      // Mobile
      dialogWidth = width * 0.9;
    } else if (width < 1200) {
      // Tablet
      dialogWidth = width * 0.7;
    } else {
      // Laptop/Desktop
      dialogWidth = width * 0.5;
    }

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: dialogWidth,
        padding: EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}