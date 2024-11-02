import 'package:flutter/material.dart';
import 'package:simple_chat_app/services/auth/auth_service.dart';
import 'package:simple_chat_app/services/chat/chat_services.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  final String receiverId;

  ChatPage({super.key, required this.receiverEmail, required this.receiverId});

  final TextEditingController _messageController = TextEditingController();

  //chat & auth services
  final ChatServices _chatServices = ChatServices();
  final AuthService _authService = AuthService();

  //send message
  void sendMessage() async {
    //if there is something inside text Field
    if (_messageController.text.isNotEmpty) {
      //send message
      await _chatServices.sendMessage(receiverId, _messageController.text);
      //clear text controller
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receiverEmail),
      ),
      body: Column(
        children: [
          //display all the message
          Expanded(child: _buildMessageList(),)
        ],
      ),
    );
  }
}
