import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_upward_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          Text(
            'BACK TO TOP',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                color: Colors.white,
                size: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.mail,
                color: Colors.white,
                size: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.phone,
                color: Colors.white,
                size: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.link,
                color: Colors.white,
                size: 30.0,
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '@2024 MUSHARRAF HAMRAZ All Rights Reserved.',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
