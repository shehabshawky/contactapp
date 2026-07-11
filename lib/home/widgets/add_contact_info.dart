import 'package:contactapp/core/colors/colors.dart';
import 'package:flutter/material.dart';

class AddContactInfo extends StatelessWidget {
  bool divider;
  final String text;
  AddContactInfo({super.key, this.divider = false, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const .symmetric(vertical: 9),
            child: Text(
              text,
              style: TextStyle(color: Mycolors.sacondryColor, fontSize: 16),
            ),
          ),
          divider
              ? Divider(color: Mycolors.sacondryColor, thickness: 1)
              : Container(),
        ],
      ),
    );
  }
}
