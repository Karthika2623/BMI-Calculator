import 'package:flutter/material.dart';
import 'screen/BmiCal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor:const Color(0XFF0A0E21),
        scaffoldBackgroundColor: Colors.white12,
    ),
        home: BmiCal(),
      //   useMaterial3: true,
      //   scaffoldBackgroundColor: Color(0XFF0A0E21),
      //   appBarTheme: AppBarTheme(color: Color(0XFF0A0E21)),
      //   colorScheme: ColorScheme.fromSeed(
      //   seedColor: Colors.purple,
      //     brightness: Brightness.dark,
      // ),
    );
  }
}
