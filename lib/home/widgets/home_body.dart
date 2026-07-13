import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/contact.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Lottie.asset("assets/lottie/empty_list.json"),

          Text(
            "There is No Contacts Added Here",
            style: TextStyle(
              color: Mycolors.sacondryColor,
              fontSize: 20,
              fontWeight: .w500,
            ),
          ),
          Contact(),
        ],
      ),
    );
  }
}
