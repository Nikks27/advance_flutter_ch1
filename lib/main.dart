import 'package:advance_flutter_ch1/Screens/QuotesData/Provider/Qoutes_Provider.dart';
import 'package:advance_flutter_ch1/Screens/QuotesData/View/QoutesDataView.dart';
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
      create: (context) => QuotesProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Quotesdataview(),
      ),
    );
  }
}