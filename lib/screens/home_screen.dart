import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 25);
    return Scaffold(
      //backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('Home Screen AppBar'),
        elevation: 0,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Clicks counters:', style: fontSize),
              Text('number', style: fontSize),
            ],
          ),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      

      ) ,
    );
  }
}
