import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServices {
  //get  instance  of firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // get user stream
  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final user = doc.data();
        return user;
      }).toList();
    });
  }
  // send messages
  Future<void>sendMessage(String receiverId,message)async{

    //get current user info

    //create a new message

    //construct chat room ID for the two users


    //add new message to the database
  }

  // get messages
}
