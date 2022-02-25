import 'package:flutter/material.dart';
import 'package:games_market/sign_in.dart';
import 'package:games_market/sign_up.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: sign_in(), title: "Page 01");
  }
}
