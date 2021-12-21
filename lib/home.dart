import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screenfour.dart';
import 'package:getx_statemanagement/screenone.dart';
import 'package:getx_statemanagement/screenthree.dart';
import 'package:getx_statemanagement/screentwo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "get-X",
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
                /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ScreenOne();
                }));
                */
                Get.to(const ScreenOne());
              },
              child: const Text(
                'ScreenOne',
              ),
              color: Colors.amber[100],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ScreenTwo();
                }));
                */
                Get.to(const ScreenTwo());
              },
              child: const Text('ScreenTwo'),
              color: Colors.amber[100],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                /*  Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const ScreenThree();
                }));
                */
                Get.to(const ScreenThree());
              },
              child: const Text('ScreenThree'),
              color: Colors.amber[100],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                /*  Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const ScreenThree();
                }));
                */
                Get.to(const ScreenFour());
              },
              child: const Text('ScreenFour'),
              color: Colors.amber[100],
            )
          ],
        ),
      ),
    );
  }
}
