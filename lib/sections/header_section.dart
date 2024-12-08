import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 700,
          color: Colors.black,
        ),
        Row(
          children: [
            // Left half with gray background and text
            Expanded(
              child: ClipPath(
                clipper: TiltClipper(),
                child: Container(
                  height: 700,
                  color: Colors.grey.shade400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 80, horizontal: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Hi, I am',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Musharraf Hamraz',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'ML Engineer / Flutter Developer',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 90),
                        Row(
                          children: [
                            LinksWidget(
                              icon: Icons.email,
                              onPress: () {},
                            ),
                            const SizedBox(width: 15.0),
                            LinksWidget(
                              icon: Icons.code,
                              onPress: () {},
                            ),
                            const SizedBox(width: 15.0),
                            LinksWidget(
                              icon: Icons.link,
                              onPress: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Right half with black background and image
            Expanded(
              child: Container(
                height: 700,
                color: Colors.black,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        'lib/assets/pic1.jpg', // Replace with your asset
                        width: 360,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Top navigation menu
        Positioned(
          top: 20,
          right: 40,
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'About me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Skills',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Portfolio',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('CONTACT ME'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LinksWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;
  const LinksWidget({
    super.key,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(color: Colors.grey.shade500, boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: const Offset(0, 2),
          ),
        ]),
        child: Icon(
          icon,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}

class TiltClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    // Top-left corner
    path.moveTo(0, 0);
    // Top-right corner
    path.lineTo(size.width, 0);
    // Bottom-right corner (reduced width)
    path.lineTo(size.width * 0.8, size.height);
    // Bottom-left corner
    path.lineTo(0, size.height);

    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Reclip only if necessary
  }
}
