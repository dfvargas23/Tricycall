import 'package:flutter/material.dart';
import 'information.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfff0A72BF), Color(0xfff359490)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          leading: Padding(
            padding: EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/img/logo 1.png',
              width: 200.0,
              height: 200.0,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/img/Logo (3).png',
                width: 150.0,
                height: 150.0,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/img/homebckgrnd 1.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.black.withOpacity(0.5),
                  child: TextInformation(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
