import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                    horizontal: 100.0,
                  ), // Adjusts the length of the indicator
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
              width: MediaQuery.of(context).size.width,
              color: Colors.black54, // Optional background color
              child: const TabBarView(
                children: [GridViewTab(), GridViewTab(), GridViewTab()],
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: const Center(
                child: Text(
                  'And many more to come!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridViewTab extends StatelessWidget {
  const GridViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('lib/assets/pic.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('lib/assets/pic.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('lib/assets/pic.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('lib/assets/pic.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('lib/assets/pic.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('lib/assets/pic.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
