import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/screens/screens.dart';
// import '../helper/api.dart' as http;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id:(context)=>HomePage(),
      },
      initialRoute: HomePage.id,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

