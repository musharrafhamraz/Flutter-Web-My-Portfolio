import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/about_me_section.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/assets/portfolio_image.png'),
            fit: BoxFit.cover,
            opacity: 0.5),
      ),
      child: const Center(child: HeadetWidget(text: '  P O R T F O L I O  ')),
    );
  }
}
