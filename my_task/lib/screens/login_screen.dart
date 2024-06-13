import 'package:my_task/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_task/reusable_widget/reusable_snackbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool? showPassword;
  final correctNumber = 9033006262;
  final correctPassword = 'eVital@12';

  void login() {
    String mobile = mobileController.text.trim();
    String password = passwordController.text.trim();
    if (mobile.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(ReusableSnackBar.give(
          color: Colors.red, text: 'Email or Password cannot be empty'));
    } else if (int.tryParse(mobile) == null) {
      ScaffoldMessenger.of(context).showSnackBar(ReusableSnackBar.give(
          color: Colors.red, text: 'Please enter valid number'));
    } else if (mobile.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(ReusableSnackBar.give(
          color: Colors.red, text: 'Mobile number must be of 10 digits'));
    } else {
      if (int.parse(mobileController.text.trim()) == correctNumber &&
          passwordController.text.trim() == correctPassword) {
        ScaffoldMessenger.of(context).showSnackBar(ReusableSnackBar.give(
            color: Colors.green, text: 'Login Successful!'));
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(ReusableSnackBar.give(
            color: Colors.red, text: 'Invalid number or password'));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'Logo',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/evitalrx.jpg',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 50, color: Colors.blue, fontFamily: 'PTSerif'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: mobileController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.blue),
                labelText: 'Mobile Number',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 5)),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
              obscureText: showPassword ?? true,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.blue),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(() {
                      showPassword = false;
                    });
                  },
                  disabledColor: Colors.black,
                  color: Colors.blue,
                ),
                labelText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 5)),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                onPressed: login,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'PTSerif', fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
