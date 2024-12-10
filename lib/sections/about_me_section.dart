import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                "I am a tech enthusiast passionate about crafting innovative and user-friendly mobile applications. With expertise in modern technologies like AI, data analysis, and interactive design, I bring creative ideas to life"),
          ),
          const SizedBox(
            height: 60,
          ),
          const TwoSideButton(
            text: 'EXPLORE',
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
            height: 100,
          ),
          const HeadetWidget(
            text: 'S K I L L S ',
          ),
          const SizedBox(
            height: 60,
          ),
          const UsingSkillsWidget(),
          const SizedBox(
            height: 30,
          ),
          const LearningSkillsWidget(),
          const SizedBox(
            height: 30,
          ),
          const OtherSkillsWidget(),
        ],
      ),
    );
  }
}

class TwoSideButton extends StatelessWidget {
  final String text;
  const TwoSideButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 40,
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
      child: Center(
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class LearningSkillsWidget extends StatelessWidget {
  const LearningSkillsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final int crossAxisCount = screenWidth < 600 ? 2 : 4;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              ' LEARNING: ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
          const SizedBox(height: 60),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            children: const [
              SkillWidget(
                imageUrl: 'lib/assets/learning_skills/javascript.png',
                skillName: 'JAVASCRIPT',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/learning_skills/mongodb.png',
                skillName: 'MONGODB',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/learning_skills/yolo.png',
                skillName: 'YOLO',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/learning_skills/rust.png',
                skillName: 'RUST',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OtherSkillsWidget extends StatelessWidget {
  const OtherSkillsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final int crossAxisCount = screenWidth < 600 ? 2 : 4;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              ' OTHER SKILLS: ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
          const SizedBox(height: 30),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            children: const [
              SkillWidget(
                imageUrl: 'lib/assets/other_skills/cplusplus.png',
                skillName: 'C++',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/other_skills/git.png',
                skillName: 'GIT',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/other_skills/sql.png',
                skillName: 'SQL',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/other_skills/firebase.png',
                skillName: 'FIREBASE',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UsingSkillsWidget extends StatelessWidget {
  const UsingSkillsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final int crossAxisCount = screenWidth < 1200 ? 2 : 4;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              ' USING NOW: ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
          const SizedBox(height: 60),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            children: const [
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/python.png',
                skillName: 'PYTHON',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/pytorch.png',
                skillName: 'PYTORCH',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/tensorflow.png',
                skillName: 'TENSORFLOW',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/flutter.png',
                skillName: 'FLUTTER',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/dart.png',
                skillName: 'DART',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/pandas.png',
                skillName: 'PANDAS',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/openc.png',
                skillName: 'OPENCV',
              ),
              SkillWidget(
                imageUrl: 'lib/assets/using_skills/sklearn.png',
                skillName: 'SK Learn',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  final String imageUrl;
  final String skillName;
  const SkillWidget({
    super.key,
    required this.imageUrl,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(height: 100, width: 100, imageUrl),
        const SizedBox(
          height: 10.0,
        ),
        Text(skillName),
      ],
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
