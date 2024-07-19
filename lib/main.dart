import 'package:advance_flutter_ch1/LounchUri/Provider/ContactusPageProvider.dart';
import 'package:advance_flutter_ch1/LounchUri/View/launchHome.dart';
import 'package:advance_flutter_ch1/Photo%20Gallery/Provider/Provider.dart';
import 'package:advance_flutter_ch1/Photo%20Gallery/View/homescreen.dart';
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/Provider/Provider.dart';
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/View/homescreen.dart';
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/View/introscreen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OpenHideFolderProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}