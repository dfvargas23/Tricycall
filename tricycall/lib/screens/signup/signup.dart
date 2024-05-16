import 'package:flutter/material.dart';
import 'package:tricycall/screens/signup/signup_commuter.dart';
import 'package:tricycall/screens/signup/signup_driver.dart';

/* Authored by: Dean Francis Vargas
Company: Sheesh
Project: TricyCall
Feature: [TRYC-003] Signup
Description: This feature is part of the signup which the user can choose which account they will create.
 */

enum UserRole { driver, commuter }

class PickAccount extends StatefulWidget {
  @override
  _PickAccountState createState() => _PickAccountState();
}

class _PickAccountState extends State<PickAccount> {
  UserRole? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Image.asset(
                  'assets/img/Logo (3).png',
                  height: 200,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  DropdownButton<UserRole>(
                    hint: Text(
                      'Select',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    value: _selectedRole,
                    onChanged: (UserRole? newValue) {
                      setState(() {
                        _selectedRole = newValue;
                      });
                    },
                    items: const [
                      DropdownMenuItem(
                        value: UserRole.driver,
                        child: Text('Driver'),
                      ),
                      DropdownMenuItem(
                        value: UserRole.commuter,
                        child: Text('Commuter'),
                      ),
                    ],
                    icon: const SizedBox.shrink(),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Sign up as'),
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (_selectedRole != null) {
                    if (_selectedRole == UserRole.driver) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupDriver()),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupCommuter()),
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 77, 69),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('CONFIRM',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
