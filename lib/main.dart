
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'dbHelper/dbmongo.dart';
import 'screen/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Open-Sans',
        scaffoldBackgroundColor: darker,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: white, displayColor: white),
      ),
      home: const HomeScreen(),
    );
  }
}
