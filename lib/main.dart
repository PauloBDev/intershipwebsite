import 'package:flutter/material.dart';
import 'package:intershipwebsite/platforms/LoginDesktop.dart';
import 'package:intershipwebsite/platforms/LoginMobile.dart';
import 'package:intershipwebsite/platforms/LoginTablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(), //<--
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const LoginMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            return const LoginTablet();
          } else {
            return const LoginDesktop();
          }
        },
      ),
    );
  }
}
