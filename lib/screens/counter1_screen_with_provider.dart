import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task4/screens/counter2_screen.dart';

import '../provider/counter_provider.dart';

class Counter1ScreenWithProvider extends StatefulWidget {
  const Counter1ScreenWithProvider({super.key});

  @override
  State<Counter1ScreenWithProvider> createState() =>
      _Counter1ScreenWithProviderState();
}

class _Counter1ScreenWithProviderState
    extends State<Counter1ScreenWithProvider> {
  @override
  @override
  Widget build(BuildContext context) {
    // final  countProvider=Provider.of<CounterProvider>(context,);
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
                  Text(
                    value.counter.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
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

            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Counter2Screen()));
                },
                child: Text('Go the Next Screen Screen'))
          ],
        ),
      ),
    );
  }
}
