import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter() {
    //⭕⭕⭕ setState rebuilds the below widget every time it runs ⭕⭕⭕
    setState(() {
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
            Text("You pushed the button this many times:"),

            //counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            //Button
            ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 37, 126, 215)),
                child: Text(
                  "Increment!",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 236, 236, 236)),
                ))
          ],
        ),
      ),
    );
  }
}
