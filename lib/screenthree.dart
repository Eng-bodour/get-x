import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screenfour.dart';
import 'package:getx_statemanagement/screentwo.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen-3",
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
                Get.to(const ScreenTwo());
              },
              child: const Text('ScreenTwo'),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: () {
                Get.off(const ScreenFour());
                //  Navigator.pushNamed(context, '/screen3');
              },
              child: const Text('ScreenFour(off)'),
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
        ),
      ),
    );
  }
}
