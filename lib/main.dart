import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Request permission to access external storage
  await Permission.storage.request();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          canvasColor: Colors.white,
          useMaterial3: true,
          fontFamily: 'custom',
        ),
        home: const portfolio());
  }
}
