import 'package:contactapp/core/colors/colors.dart';
import 'package:contactapp/home/widgets/button.dart';
import 'package:contactapp/models/contact_model.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final ContactModel contact;
  const Contact({super.key, required this.contact});

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
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/contact1.png",
                    fit: BoxFit.cover,
                  ),
                ),
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
                  child: Text(contact.name),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Row(
              children: [
                Icon(Icons.email, size: 18),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    contact.email,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Icon(Icons.phone_android, size: 18),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    contact.phone,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: double.infinity,
              height: 36,
              child: Button(
                txt: "Delete",
                ontap: () {},
                btnColor: const Color(0XFFF93E3E),
                ridus: 8,
                txtColor: Colors.white,
                fontsize: 10,
                icon: Icons.delete,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
