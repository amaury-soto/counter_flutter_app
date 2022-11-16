import 'package:flutter/material.dart';
import 'package:my_app/screens/custom_floating_actions.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  //Created state
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 25);
    return Scaffold(
      //backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('Counter Screen AppBar'),
        elevation: 0,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Clicks counters:', style: fontSize),
              Text('$counter', style: fontSize),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resertFn: reset,
      ),
    );
  }
}


