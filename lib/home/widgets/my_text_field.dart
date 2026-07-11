import 'package:contactapp/core/colors/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String txt;
  final TextEditingController controller;
  const MyTextField({super.key, required this.txt, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        width: 370,
        height: 60,
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Mycolors.sacondryColor),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Mycolors.sacondryColor, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            hintStyle: TextStyle(color: Color(0XFFE2F4F6)),
            hintText: 'Enter User $txt',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter User $txt';
            }
            return null;
          },
          controller: controller,
        ),
      ),
    );
  }
}
