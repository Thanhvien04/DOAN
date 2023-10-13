import 'package:demo_scaffold/botnav.dart';
import 'package:demo_scaffold/botnavagi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chi tiết")),
      body: const Text("Trang chi tiết"),
      drawer: menu(idx: 1),
      bottomNavigationBar: BottomNav(idx: 1),
      bottomSheet: const Text("Detail"),
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
