import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //logo
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
              onTap: () {},
            ),
          ),
          //setting listtile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("SETTINGS"),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
          ),
          //logout listtile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("LOGOUT"),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
