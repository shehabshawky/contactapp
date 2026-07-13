import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/contact.dart';
import 'package:contactapp/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeBody extends StatelessWidget {
  final List<ContactModel> contacts;
  const HomeBody({super.key, required this.contacts});
  @override
  Widget build(BuildContext context) {
    return contacts.isEmpty
        ? Center(
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
              ],
            ),
          )
        : GridView.builder(
            itemCount: contacts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              return Contact(contact: contacts[index]);
            },
          );
  }
}
