import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/add_contact_info.dart';
import 'package:contactapp/home/widgets/button.dart';
import 'package:contactapp/home/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AddContactSheet extends StatefulWidget {
  AddContactSheet({super.key});

  @override
  State<AddContactSheet> createState() => _AddContactSheetState();
}

class _AddContactSheetState extends State<AddContactSheet> {
  final formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 20, vertical: 18),
      width: 402,
      height: 467,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: .circular(28),
                  border: BoxBorder.all(
                    color: Mycolors.sacondryColor,
                    width: 1,
                  ),
                ),
                width: 143,
                height: 146,
                child: Lottie.asset("assets/lottie/image_picker.json"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: nameController,
                      builder: (context, value, child) => AddContactInfo(
                        text: nameController.text.isEmpty
                            ? "Enter User Name "
                            : nameController.text,
                        divider: true,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: emailController,
                      builder: (context, value, child) => AddContactInfo(
                        text: emailController.text.isEmpty
                            ? "example@email.com "
                            : emailController.text,
                        divider: true,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: phoneController,
                      builder: (context, value, child) => AddContactInfo(
                        text: phoneController.text.isEmpty
                            ? "+200000000000 "
                            : phoneController.text,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 16),
                MyTextField(controller: nameController, txt: "Name"),
                MyTextField(controller: emailController, txt: "Email"),
                MyTextField(controller: phoneController, txt: "Phone"),
                Button(
                  txt: "Enter user",
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      print("Valid");
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
