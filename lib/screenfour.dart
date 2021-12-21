import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen-4",
          style: TextStyle(fontSize: 27.0, color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  size: 40,
                )),
            const SizedBox(
              width: 30.0,
            ),
            Text(
              '$count',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              width: 30.0,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                icon: const Icon(
                  Icons.minimize,
                  size: 40,
                )),
          ],
        ),
      ),
    );
  }
}
