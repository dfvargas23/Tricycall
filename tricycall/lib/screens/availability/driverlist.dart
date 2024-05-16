import 'package:flutter/material.dart';

class Driver {
  final String name;
  final String plateNumber;
  final String color;
  final double distance;
  final bool available;

  Driver(
      {required this.name,
      required this.plateNumber,
      required this.color,
      required this.distance,
      required this.available});
}

class BookingConfirmationDialogContent extends StatelessWidget {
  final Driver driver;

  BookingConfirmationDialogContent({required this.driver});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/Logo.png',
          height: 45,
        ),
        const SizedBox(height: 16),
        const Text(
          'Do you want to book this driver?',
          style: const TextStyle(fontFamily: 'Montserrat', fontSize: 15),
        ),
        const SizedBox(height: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Driver Details:',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3),
            Text(
              'Name: ${driver.name}',
              style: const TextStyle(fontFamily: 'Montserrat'),
            ),
            Text(
              'Plate Number: ${driver.plateNumber}',
              style: const TextStyle(fontFamily: 'Montserrat'),
            ),
            Text(
              'Tricycle Color: ${driver.color}',
              style: const TextStyle(fontFamily: 'Montserrat'),
            ),
            Text(
              'Distance: ${driver.distance.toStringAsFixed(1)} km',
              style: const TextStyle(fontFamily: 'Montserrat'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Confirm',
                style: const TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            const SizedBox(width: 16),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: const TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
