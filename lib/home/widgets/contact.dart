import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/button.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolors.sacondryColor,
        borderRadius: .circular(16),
      ),
      clipBehavior: Clip.none,
      width: 177,
      height: 286,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/contact1.png"),
                  ),
                ),
                width: 177,
                height: 177,
              ),
              Positioned(
                bottom: 8,
                left: 7,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: .circular(8),
                    color: Mycolors.sacondryColor,
                  ),
                  child: Text("Leo Messi"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email_sharp),
              Text("leomessi.route@gmail.com"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone_android),
              Text("+200000000000"),
            ],
          ),
          Button(txt: "Delete", ontap: (){})
        ],
      ),
    );
  }
}
