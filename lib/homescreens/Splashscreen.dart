import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login/Signup%20screen/LoginScreen.dart';
import 'package:flutter_application_1/Login/Signup%20screen/SignInScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/umbrella.jpeg'), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2 - -250,
          left: MediaQuery.of(context).size.width / 2 - 170,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white,
                minimumSize: const Size(340, 53)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LogInScreen()),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2 - -200,
          left: MediaQuery.of(context).size.width / 2 - 170,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.black,
                minimumSize: const Size(340, 53)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
            child: const Text(
              'Signup',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
