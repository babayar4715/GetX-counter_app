import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegment_1/counter_with_state_manegment/controlller.dart';

import 'second-with_getx.dart';
// this is the most our popular wodget is get x 
// at first will import this widget 

class ST extends StatelessWidget {
  ST({
    super.key,
  });

  final controller = Get.put(Babayarbro());
  // bul jer ozgormo achyp alganybyzdyn sebebi bul jerde biz controller degen bir ozgormo achanbyz jana any biz Babayar brogo 
  // tendep alganbyz all jerde bizge Get.put degen jardam bergen 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' bye '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
            // here are obx can help to simply updating ui
            // undet teh helping of obx we can make the Text to listen controller

              return Text(
                '${controller.count}',
                // this is the place where we put controller. ' and count is for show that there are the place where we will change the text
                // controller is controlls the count 
                // mostly count will change under controller / in controller we have two thing just say increament and decremenet they are 
                // the helper that under them controller will change count
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondWithGetx(),


                  ),
                );
              },
              child: const Text('Go to second page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),

        // sey this is the place where can change not re build widget 
        // tapping thos floating button this function is works controller increament 

      ),
    );
  }
}
