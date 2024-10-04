import 'package:flutter/material.dart';
import 'package:simple_chat_app/auth/login_or_register.dart';
import 'package:simple_chat_app/pages/loginpage.dart';
import 'package:simple_chat_app/pages/register_page.dart';
import 'package:simple_chat_app/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      home: LoginOrRegister(),
      theme: lightMode,
    );
  }
}
