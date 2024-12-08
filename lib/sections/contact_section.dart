import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/about_me_section.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 150),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: RadialGradient(
              radius: 0.8, colors: [Colors.grey.shade200, Colors.grey])),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeadetWidget(
              text: '  C O N T A C T  M E  ',
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Text(
                  textAlign: TextAlign.center,
                  "Feel free to reach out! Whether you have questions, ideas to share, or simply want to connect, I’d love to hear from you."),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              '----------<<<<<<<<<>>>>>>>>>>>>--------------',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                children: [
                  TextFieldWidget(
                    controller: nameController,
                    labelText: '  Enter your Name* ',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFieldWidget(
                    controller: emailController,
                    labelText: '  Enter your Email* ',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFieldWidget(
                    controller: phoneController,
                    labelText: '  Enter your Phone* ',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFieldWidget(
                    controller: messageController,
                    labelText: '   Enter your Message ',
                    maxLines: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const TwoSideButton(
              text: 'SUBMIT',
            )
          ]),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final int? maxLines;

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(
              color: Colors.black, // Left border color
              width: 4.0, // Left border width
            ),
            bottom: BorderSide(
              color: Colors.black, // Bottom border color
              width: 4.0, // Bottom border width
            ),
          ),
        ),
        child: TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: labelText,
            hintStyle: const TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold),
            border: InputBorder.none, // Remove default border
            contentPadding:
                const EdgeInsets.all(10), // Padding inside the field
          ),
        ));
  }
}
