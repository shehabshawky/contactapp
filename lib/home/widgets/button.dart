import 'package:contactapp/core/colors/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final VoidCallback ontap;
  final Color? txtColor;
  final Color? btnColor;
  final double? ridus;
  final double? fontsize;
  final IconData? icon;

  const Button({
    super.key,
    required this.txt,
    required this.ontap,
    this.txtColor,
    this.btnColor,
    this.ridus,
    this.fontsize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            backgroundColor: btnColor ?? Mycolors.sacondryColor,
            shape: RoundedRectangleBorder(borderRadius: .circular(ridus ?? 16)),
          ),
          child: icon == null
              ? Text(
                  txt,
                  style: TextStyle(
                    color: txtColor ?? Mycolors.primaryColor,
                    fontSize: fontsize ?? 20,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon, color: txtColor),
                    const SizedBox(width: 8),
                    Text(
                      txt,
                      style: TextStyle(
                        fontSize: fontsize ?? 20,
                        fontWeight: FontWeight.w600,
                        color: txtColor,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
