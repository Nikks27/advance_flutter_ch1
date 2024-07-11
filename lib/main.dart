import 'package:advance_flutter_ch1/Screens/provider/HomePage_Provider.dart';
import 'package:advance_flutter_ch1/Screens/view/HomePage.dart';
import 'package:advance_flutter_ch1/routs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderClass(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ProviderClass>(context).IsDark?ThemeMode.light:ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: ProviderTheme(),
      ),
    );
  }
}
