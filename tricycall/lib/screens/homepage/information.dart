import 'package:flutter/material.dart';

class TextInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'GOING THE EXTRA MILE FOR YOU',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Color(0xfff7FE66A),
          ),
        ),
        SizedBox(height: 15.0),
        Text(
          'Welcome to Tricycall. It is a convenient booking platform for tricycle rides in the Philippines. Whether you need a ride to work, school, or anywhere else, Tricycall has got you covered. Just few clicks away we will help you ride with ease.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
