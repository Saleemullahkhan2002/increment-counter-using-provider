import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class Counter2Screen extends StatefulWidget {
  const Counter2Screen({super.key});

  @override
  State<Counter2Screen> createState() => _Counter2ScreenState();
}

class _Counter2ScreenState extends State<Counter2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter screen using provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(builder: ((context, value, child) {
              return Column(
                children: [
                  Text(value.counter.toString(),style: TextStyle(fontSize: 20), ),
                  SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton(
                    onPressed: value.setCount,
                    child: Icon(Icons.add),
                  )
                ],
              );
            })),
           
          ],
        ),
      ),
    );

  }
}