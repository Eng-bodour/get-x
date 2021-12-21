import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screenone.dart';
import 'package:getx_statemanagement/screenthree.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  ScreenOne one = const ScreenOne();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen-2",
          style: TextStyle(fontSize: 27.0, color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              Get.offAll(const ScreenTwo());
            },
            child: const Text('ScreenTwo(offAll)'),
            color: Colors.blue[200],
          ),
          MaterialButton(
            onPressed: () {
              Get.off(const ScreenThree());
              //  Navigator.pushNamed(context, '/screen3');
            },
            child: const Text('ScreenThree(off)'),
            color: Colors.blue[200],
          ),
          MaterialButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('back'),
            color: Colors.blue[200],
          ),
        ],
      )),
    );
  }
}
