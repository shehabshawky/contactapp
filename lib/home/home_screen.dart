import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/add_contact_sheet.dart';
import 'package:contactapp/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.primaryColor,
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", width: 117, height: 39),
        backgroundColor: Mycolors.primaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Mycolors.primaryColor,
            context: context,
            builder: (context) => AddContactSheet(),
          );
        },
        focusColor: Mycolors.primaryColor,
        backgroundColor: Mycolors.sacondryColor,
        child: Icon(Icons.add, color: Mycolors.primaryColor),
      ),
      body: HomeBody(),
    );
  }
}
