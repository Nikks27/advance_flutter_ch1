import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/Provider/Provider.dart';
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/View/homescreen.dart';
import 'package:advance_flutter_ch1/Time%20intro%20Screen/Screens/View/introscreen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool intros = sharedPreferences.getBool('intro') ?? false;
  runApp(
    ChangeNotifierProvider(
        create: (context) => Introprovider(intros),
        builder: (context, child) => MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider.of<Introprovider>(context,listen: true).intro ? Homepage() : Introscreen1(),
    );
  }
}