import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegment_1/counter/counter.dart';
import 'package:state_manegment_1/counter_with_state_manegment/counter_with_gets.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ST(),
    );
  }
}
