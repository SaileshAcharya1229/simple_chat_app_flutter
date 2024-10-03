import 'package:flutter/material.dart';
import 'package:simple_chat_app/components/My_button.dart';
import 'package:simple_chat_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  //register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.message,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(height: 50),
                Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MyTextField(
                  obscureText: false,
                  hintText: 'Email',
                  controller: _emailController,
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  hintText: 'password',
                  obscureText: true,
                  controller: _passController,
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  text: "Register",
                  onTap: register,
                ),
                const SizedBox(
                  height: 25,
                ),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      "Login now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
