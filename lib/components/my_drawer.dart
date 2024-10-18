import 'package:flutter/material.dart';
import 'package:simple_chat_app/services/auth/auth_service.dart';
import 'package:simple_chat_app/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

   void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Column(
            children: [],
          ), //logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.message,
                color: Theme.of(context).colorScheme.primary,
                size: 40,
              ),
            ),
          ),
          //home listTile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("HOME"),
              leading: Icon(Icons.home),
              onTap: () {
                //pop the drawer

                Navigator.pop(context);
              },
            ),
          ),
          //setting listtile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("SETTINGS"),
              leading: Icon(Icons.settings),
              onTap: () {
                //pop the drawer

                Navigator.pop(context);

                //navigate to setting page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (sontext) => SettingPage(),
                  ),
                );
              },
            ),
          ),
          //logout listtile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("LOGOUT"),
              leading: Icon(Icons.logout),
              onTap: logout,
            ),
          ),
        ],
      ),
    );
  }
}
