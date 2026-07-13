import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/add_contact_sheet.dart';
import 'package:contactapp/home/widgets/contact.dart';
import 'package:contactapp/home/widgets/home_body.dart';
import 'package:contactapp/models/contact_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ContactModel> contacts = [];
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
            isScrollControlled: true,
            backgroundColor: Mycolors.primaryColor,
            context: context,
            builder: (context) => AddContactSheet(
              onAdd: (contact) {
                setState(() {
                  contacts.add(contact);
                });
              },
            ),
          );
        },
        focusColor: Mycolors.primaryColor,
        backgroundColor: Mycolors.sacondryColor,
        child: Icon(Icons.add, color: Mycolors.primaryColor),
      ),
      body: HomeBody(contacts: contacts),
    );
  }
}
