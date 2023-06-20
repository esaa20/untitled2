import 'package:flutter/material.dart';
import 'package:untitled2/pages/page_one.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    //Product myhight = Product (hight_screen:  MediaQuery.of(context).size.height );
    return Stack(
      children: [
        Splash(),
        // login(),
      ],
    );
  }

}