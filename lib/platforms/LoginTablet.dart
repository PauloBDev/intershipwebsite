import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTablet extends StatefulWidget {
  const LoginTablet({super.key});

  @override
  State<LoginTablet> createState() => _LoginTabletState();
}

class _LoginTabletState extends State<LoginTablet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome back',
                    style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Login to your account',
                    style: GoogleFonts.inter(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                      //...
                      ),
                  const SizedBox(height: 20),
                  TextFormField(
                      //...
                      ),
                  const SizedBox(height: 25),
                  Row(
                      //...
                      ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {}, child: Text('Login'),
                    //...
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {}, child: Text('Login with Google'),
                    //...
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}