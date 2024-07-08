import 'package:advance_flutter_ch1/ChangeTheme/changetheme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => ChangeTheme(),
      },
    );
  }
}
