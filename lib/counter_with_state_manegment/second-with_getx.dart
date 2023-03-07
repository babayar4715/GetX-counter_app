import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegment_1/counter_with_state_manegment/controlller.dart';

class SecondWithGetx extends StatelessWidget {
  SecondWithGetx({Key? key}) : super(key: key);
  
  final controller = Get.put(Babayarbro());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to first page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.decrement,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
