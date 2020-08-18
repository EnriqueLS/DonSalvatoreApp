import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '...',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color(0xFF78372f),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/Logo.png'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Carta'),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}