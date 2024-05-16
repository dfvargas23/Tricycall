import 'package:flutter/material.dart';
import 'package:tricycall/screens/availability/driverlist.dart';

class AvailabilityPage extends StatelessWidget {
  final List<Driver> drivers = [
    Driver(
        name: 'Angelo Garcia',
        plateNumber: 'TYS1804',
        color: 'Grey',
        distance: 1.2,
        available: true),
    Driver(
        name: 'Adriel Reonal',
        plateNumber: 'GRR0210',
        color: 'Green',
        distance: 0.8,
        available: true),
    Driver(
        name: 'Gab Teodoro',
        plateNumber: 'ELO3207',
        color: 'Yellow',
        distance: 2.1,
        available: true),
    Driver(
        name: 'Ralph Francisco',
        plateNumber: 'TEJ8132',
        color: 'Red',
        distance: 1.1,
        available: true),
    Driver(
        name: 'Jet Cano',
        plateNumber: 'NAD3409',
        color: 'Blue',
        distance: 3.5,
        available: false),
    Driver(
        name: 'Mathew Astor',
        plateNumber: 'TAW3344',
        color: 'Grey',
        distance: 0.5,
        available: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Text(
            'Availability',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfff0A72BF), Color(0xfff359490)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                if (drivers[index].available) {
                  _showBookingConfirmation(context, drivers[index]);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      '${drivers[index].name} is not available for booking.',
                      style: const TextStyle(fontFamily: 'Montserrat'),
                    ),
                  ));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: drivers[index].available
                      ? Color(0xff359490)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(drivers[index].name,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Plate Number: ${drivers[index].plateNumber}',
                        style: const TextStyle(fontFamily: 'Montserrat'),
                      ),
                      Text('Tricycle Color: ${drivers[index].color}',
                          style: const TextStyle(fontFamily: 'Montserrat')),
                      Text(
                          'Distance: ${drivers[index].distance.toStringAsFixed(1)} km',
                          style: const TextStyle(fontFamily: 'Montserrat')),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Function for Pop Up
  void _showBookingConfirmation(BuildContext context, Driver driver) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: BookingConfirmationDialogContent(driver: driver),
        );
      },
    );
  }
}
