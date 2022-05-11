import 'package:drug_test/client/registers/login.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../shared/constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: SingleChildScrollView(
        key: formkey,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.close,
                          size: 25,
                        ),
                        tooltip: 'Close this page',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const StartApp()));
                        }),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: const Text(
                        'Sign Up',
                        style:
                            TextStyle(fontSize: 50, color: Color(0xFF686DCD)),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const LoginScreen()));
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Color(0xFFA7FFEB)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: textColor2,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: textColor2),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFF686DCD),
                        width: 2,
                      )),
                      labelStyle: TextStyle(color: Color(0xffB9C1D9)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB9C1D9))),
                      labelText: 'Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: textColor2,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: textColor2),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFF686DCD),
                        width: 2,
                      )),
                      labelStyle: TextStyle(color: Color(0xffB9C1D9)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB9C1D9))),
                      labelText: 'Email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: textColor2,
                  obscureText: true,
                  autofocus: false,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: textColor2),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFF686DCD),
                        width: 2,
                      )),
                      labelStyle: TextStyle(color: Color(0xffB9C1D9)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB9C1D9))),
                      labelText: 'Password'),
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
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xFF686DCD)),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(color: Color(0xFF686DCD)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
