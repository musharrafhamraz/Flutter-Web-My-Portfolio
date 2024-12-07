import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 500.0),
              child: TabBar(
                labelColor: Colors.grey.shade300,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.white,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                      width: 2.0,
                      color:
                          Colors.white), // Thickness and color of the indicator
                  insets: EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjusts the length of the indicator
                ),
                tabs: const [
                  Tab(text: " ALL "),
                  Tab(text: " CODED "),
                  Tab(text: " DESIGNED "),
                ],
              ),
            ),
            Container(
              height: 600,
              width: double.infinity,
              color: Colors.black, // Optional background color
              child: const TabBarView(
                children: [
                  GridViewTab(
                    images: [
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                    ],
                  ),
                  GridViewTab(
                    images: [
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                    ],
                  ),
                  GridViewTab(
                    images: [
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                      'lib/assets/pic1.jpg',
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridViewTab extends StatelessWidget {
  final List<String> images;

  const GridViewTab({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3x3 grid
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
