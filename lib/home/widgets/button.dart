import 'package:contactapp/core/colors/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final VoidCallback ontap;
  const Button({super.key, required this.txt, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        width: 370,
        height: 60,
        child: ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Mycolors.sacondryColor,
            shape: RoundedRectangleBorder(borderRadius: .circular(16)),
          ),
          child: Text(
            txt,
            style: TextStyle(color: Mycolors.primaryColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
