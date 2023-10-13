import 'package:demo_scaffold/botnav.dart';
import 'package:flutter/material.dart';

import 'botnavagi.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trang chủ"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Image.network(
              'https://lh3.googleusercontent.com/p/AF1QipMG0S91KGURf3bfZYIDbhrN7lEwTKsiZ2yeLsqx=s680-w680-h510',
              width: double.infinity,
              height: 200,
            ),
          ),
        ]),
      ),
      drawer: menu(idx: 0),
      bottomNavigationBar: const BottomNav(idx: 0),
      bottomSheet: const Text("Index"),
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
