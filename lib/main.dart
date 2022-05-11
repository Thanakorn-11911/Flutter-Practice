import 'package:drug_test/client/registers/signup.dart';
import 'package:flutter/material.dart';
import 'client/registers/login.dart';
import 'shared/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Reader',
      theme: ThemeData(
        primaryColor: bgColor1,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const StartApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: SizedBox(
                width: 300.0,
                height: 300.0,
                child: Image.asset('assets/images/01logo.png'),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side:
                        const BorderSide(width: 0.25, color: Color(0xffB9C1D9)),
                    primary: buttonColor1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const LoginScreen()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color(0xFF686DCD)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 0.25, color: Color(0xffB9C1D9)),
                      primary: buttonColor1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const SignupScreen()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xFF686DCD)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
