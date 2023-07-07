import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intershipwebsite/download&viewFile/DownloadPage.dart';

class LoginDesktop extends StatefulWidget {
  const LoginDesktop({super.key});

  @override
  State<LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/image1.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Welcome back',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'Login to your account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              SizedBox(
                width: 500,
                child: TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      hintText: 'Email', filled: true, fillColor: Colors.white),
                  //...
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 500,
                child: TextFormField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                  //...
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  if (_email.text == 'paulo.bernardino@estagio_EI' &&
                      _password.text == 'estagio2023') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DownloadPage()),
                    );
                  } else {
                    AlertDialog(
                      title: Text(
                        'Login failed.',
                        style: GoogleFonts.montserrat(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      content: Text(
                        'Wrong credencials!',
                        style: GoogleFonts.montserrat(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.montserrat(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
