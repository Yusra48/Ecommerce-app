import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreens/HomePage.dart';

class LogInSuccessful extends StatelessWidget {
  const LogInSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            children: [
              Icon(
                Icons.check_circle,
                size: 60,
                color: Colors.green,
              ),
              SizedBox(height: 10),
              Text(
                'Successful!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'You have successfully registered in',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "our app and can start working in it",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  'Start Shopping',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
