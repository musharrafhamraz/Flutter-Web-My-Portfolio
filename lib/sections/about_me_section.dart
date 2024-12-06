import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: RadialGradient(
              radius: 0.8, colors: [Colors.grey.shade200, Colors.grey])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeadetWidget(
            text: 'A B O U T  M E ',
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text(
                textAlign: TextAlign.center,
                "dfsdj uds fdhfsdjfh fhsjdsjdhfjkahdsfh fkdhzfdsf fhusfjdshf fhjkdshf hdsfhds fh gfh ghdsfsghdjf shfhd fhfsdhf fdsjfgd fdfgdhfsghdsgf gfgewru easkdjsf dfhhdfsdfjs hfdsf fhdsjfjkh dhkfsh dfhdfhf uifshdjfhkh fh"),
          ),
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
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
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
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ServiceWidget(
                      title: "DESIGN",
                      description:
                          "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                      icon: Icons.design_services,
                    ),
                    ServiceWidget(
                      title: "DEVELOPMENT",
                      description:
                          "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                      icon: Icons.code,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ServiceWidget(
                  title: "MAINTENANCE",
                  description:
                      "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                  icon: Icons.settings,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            '----------<<<<<<<<<>>>>>>>>>>>>--------------',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class HeadetWidget extends StatelessWidget {
  final String text;
  const HeadetWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
          left: BorderSide(
            color: Colors.black, // Set your desired color
            width: 6.0, // Set your desired width
          ),
          right: BorderSide(
            color: Colors.black, // Set your desired color
            width: 6.0, // Set your desired width
          ),
          top: BorderSide(
            color: Colors.black, // Set your desired color
            width: 6.0, // Set your desired width
          ),
          bottom: BorderSide(
            color: Colors.black, // Set your desired color
            width: 6.0, // Set your desired width
          ),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
        ),
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ServiceWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 40,
          color: Colors.grey,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 300,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
