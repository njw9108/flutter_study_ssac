import 'package:flutter/material.dart';
import 'package:pixabay_image_search_2/di/provider_setup.dart';
import 'package:pixabay_image_search_2/presentation/pixabay/pixabay_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: getProviders(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PixabayScreen(),
    );
  }
}
