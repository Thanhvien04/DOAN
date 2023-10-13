import 'package:demo_scaffold/botnav.dart';
import 'package:demo_scaffold/detail_screen.dart';
import 'package:demo_scaffold/profile_screen.dart';
import 'package:flutter/material.dart';

import 'index_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter demo",
        theme: ThemeData(primarySwatch: Colors.grey),
        color: Colors.amberAccent,
        supportedLocales: {const Locale('en', ' ')},
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const IndexScreen(),
          '/profile': (context) => const ProfileScreen(),
          '/detail': (context) => const DetailScreen(),
        });
  }
}
