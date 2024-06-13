import 'dart:async';
import 'package:my_task/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    splash();
  }

  void splash() async {
    await Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  child: Image.asset(
                    "assets/images/evitalrx.jpg",
                    height: 200,
                  ),
                )),
            const SizedBox(height: 20),
            const Text(
              'eVital',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontFamily: 'Bellota'),
            ),
            const Text(
              'Your Health Portal',
              style: TextStyle(
                  fontSize: 40, color: Colors.blue, fontFamily: 'Bellota'),
            ),
          ],
        ),
      ),
    );
  }
}
