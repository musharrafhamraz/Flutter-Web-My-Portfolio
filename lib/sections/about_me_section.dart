import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient:
              RadialGradient(colors: [Colors.grey, Colors.grey.shade200])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 230,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              border: Border(
                left: BorderSide(
                  color: Colors.black, // Set your desired color
                  width: 2.0, // Set your desired width
                ),
                right: BorderSide(
                  color: Colors.black, // Set your desired color
                  width: 2.0, // Set your desired width
                ),
                top: BorderSide(
                  color: Colors.black, // Set your desired color
                  width: 2.0, // Set your desired width
                ),
                bottom: BorderSide(
                  color: Colors.black, // Set your desired color
                  width: 2.0, // Set your desired width
                ),
              ),
            ),
            child: const Center(
              child: Text(
                ' A B O U T  M E ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
              "dfsdj uds fdhfsdjfh fhsjdjf shfhd fhfsdhf fdsjfgd fdfgdhfsghdsgf gfgewru easkdjsf dfhhdfsdfjs hfdsf fhdsjfjkh dhkfsh dfhdfhf uifshdjfhkh fh"),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: 130,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              border: Border(
                left: BorderSide(
                  color: Colors.black, // Set your desired color
                  width: 2.0, // Set your desired width
                ),
                right: BorderSide(
                  color: Colors.black, // Set your desired color
                  width: 2.0, // Set your desired width
                ),
                top: BorderSide.none, //No border on top
                bottom: BorderSide.none, // No border on bottom
              ),
            ),
            child: const Center(
              child: Text(
                ' EXPLORE ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text('')
        ],
      ),
    );
  }
}
