import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ResponsiveNavbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            Section(title: 'About Me', content: 'Details about me...'),
            Section(title: 'Projects', content: 'List of projects...'),
            Section(title: 'Contact', content: 'How to contact me...'),
          ],
        ),
      ),
    );
  }
}

class ResponsiveNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.blueGrey[700],
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: screenWidth > 800
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Portfolio',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    NavButton(label: 'Home'),
                    NavButton(label: 'About'),
                    NavButton(label: 'Projects'),
                    NavButton(label: 'Contact'),
                  ],
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  'My Portfolio',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    // Implement drawer or menu functionality
                  },
                ),
              ],
            ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String label;

  NavButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {}, // Implement navigation logic
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueGrey, Colors.lightBlueAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        image: DecorationImage(
          image: AssetImage('lib/assets/pic.jpeg'), // Add your header image
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken,
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to My Portfolio',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Flutter Developer | Designer | Innovator',
              style: TextStyle(fontSize: 18, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final String content;

  Section({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
