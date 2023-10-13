import 'package:demo_scaffold/botnav.dart';
import 'package:flutter/material.dart';

import 'botnavagi.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cá nhân"),
      ),
      body: const Text("Cá nhân"),
      drawer: menu(idx: 2),
      bottomNavigationBar: const BottomNav(idx: 2),
      bottomSheet: const Text("Profile"),
      persistentFooterButtons: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          tooltip: "Cài đặt",
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.output),
          tooltip: "Đăng xuất",
        ),
      ],
    );
  }
}
