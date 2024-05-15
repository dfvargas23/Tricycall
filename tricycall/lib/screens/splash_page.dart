import 'package:flutter/material.dart';
import 'package:tricycall/screens/login.dart';

/* Authored by: Dean Francis Vargas
Company: Sheesh
Project: TricyCall
Feature: [TRYC-001] Splash Screen
Description: This feature will serve as a splash screen in our app
*/

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(
      begin: 0.5, // Initial scale when far
      end: 1.0, // Final scale when near
    ).animate(_controller);

    // Start the animation
    _controller.forward();

    // Add a listener to the animation controller
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Animation completed, navigate to login screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Background
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x6500b254), // Adjusted color value
        ),
        child: Center(
          child: ScaleTransition(
            scale: _animation,
            child: Image.asset(
              'assets/img/Logo.png',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
