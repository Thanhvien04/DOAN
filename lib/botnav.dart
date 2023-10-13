import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class menu extends StatelessWidget {
  menu({super.key, required this.idx});
  final idx;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                ),
              )),
          ListTile(
            title: Text(
              'Trang chủ',
              style: TextStyle(color: idx == 0 ? Colors.blue : Colors.grey),
            ),
            leading: Icon(Icons.account_circle),
            onTap: () {
              if (idx != 0) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            title: Text(
              'Chi tiết',
              style: TextStyle(color: idx == 1 ? Colors.blue : Colors.grey),
            ),
            leading: Icon(Icons.details),
            onTap: () {
              if (idx != 1) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/detail');
              }
            },
          ),
          ListTile(
            title: Text(
              'Cá nhân',
              style: TextStyle(color: idx == 2 ? Colors.blue : Colors.grey),
            ),
            leading: Icon(Icons.access_alarm),
            onTap: () {
              if (idx != 2) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/profile');
              }
            },
          ),
        ],
      ),
    );
  }
}
