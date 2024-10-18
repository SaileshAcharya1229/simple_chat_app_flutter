import 'package:flutter/material.dart';
import 'package:simple_chat_app/services/auth/auth_service.dart';
import 'package:simple_chat_app/components/My_button.dart';
import 'package:simple_chat_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmpassController = TextEditingController();

  //register method
  void register(BuildContext context) {
    final _auth = AuthService();

    if (_passController.text == _confirmpassController.text) {
      try {
        _auth.signInWithEmailPassword(
          _emailController.text,
          _passController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    else{
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password dont match!"),
        ),
      );
    }
  }

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
                SizedBox(
                  height: 20,
                ),

                MyTextField(
                  hintText: 'confirm password',
                  obscureText: true,
                  controller: _confirmpassController,
                ),
                const SizedBox(
                  height: 25,
                ),

                MyButton(
                  text: "Register",
                  onTap: () => register(context),
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
                    GestureDetector(
                      onTap: onTap,
                      child: Text(
                        "Login now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
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
