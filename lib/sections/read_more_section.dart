import 'package:flutter/material.dart';

class ReadMoreSection extends StatelessWidget {
  const ReadMoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, bottom: 10, top: 10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black87, Colors.black54])),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 150),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Musharraf Hamraz',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Musharraf Hamraz is a tech enthusiast with a strong passion for mobile app development and creating impactful digital solutions. He enjoys working with cutting-edge technologies, blending innovation with practical applications. From building interactive user experiences to exploring AI and data-driven insights, Musharraf constantly seeks to grow and contribute to the tech world. His commitment to learning and creativity drives him to turn ideas into meaningful solutions.',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 130,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        left: BorderSide(
                          color: Colors.white, // Set your desired color
                          width: 2.0, // Set your desired width
                        ),
                        right: BorderSide(
                          color: Colors.white, // Set your desired color
                          width: 2.0, // Set your desired width
                        ),
                        top: BorderSide.none, // No border on top
                        bottom: BorderSide.none, // No border on bottom
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 150,
          )
        ],
      ),
    );
  }
}
