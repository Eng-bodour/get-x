import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/home.dart';
import 'package:getx_statemanagement/screenone.dart';
import 'package:getx_statemanagement/screenthree.dart';
import 'package:getx_statemanagement/screentwo.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    title: 'GetX-1',
    routes: {
      '/': (context) => const Home(),
      '/screen1': (context) => const ScreenOne(),
      '/screen2': (context) => const ScreenTwo(),
      '/screen3': (context) => const ScreenThree()
    },
  ));
}
