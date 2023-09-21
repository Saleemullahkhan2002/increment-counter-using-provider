import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task4/provider/counter_provider.dart';
import 'package:task4/screens/counter1_screen_with_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CounterProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          return MaterialApp(home: Counter1ScreenWithProvider());
        }));
  }
}
