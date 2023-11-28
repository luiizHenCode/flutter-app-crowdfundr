import 'package:flutter/material.dart';

import './pages/fundation/fundation_detail.dart';
import './pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CrowdFundr.',
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.grey.shade100,
        ),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/fundation': (context) => const FundationDetailPage(),
      },
    );
  }
}
