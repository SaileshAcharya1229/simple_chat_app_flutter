import 'package:flutter/material.dart';
import 'package:simple_chat_app/components/my_drawer.dart';
import 'package:simple_chat_app/components/user_tile.dart';
import 'package:simple_chat_app/services/auth/auth_service.dart';
import 'package:simple_chat_app/services/chat/chat_services.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

//chat & auth service
  final ChatServices _chatServices = ChatServices();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      drawer: MyDrawer(),
      body: _buildUserList(),
    );
  }

  //build a list of users except for the current logged in user
  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatServices.getUsersStream(),
      builder: (context, snapshot) {
        //error
        if (snapshot.hasError) {
          return const Text("Error");
        }

        //loading..
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }

        //return ListView
        return ListView(
          children: snapshot.data!
              .map<Widget>((userData) => _buildUserListItem)
              .toList(),
        );
      },
    );
  }

 
}
