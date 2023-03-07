import 'package:get/get.dart';

class Babayarbro extends GetxController {
// here we creat one class  there are we write Get before name our extander 

  var count = 0.obs;
  // bul jerde biz count degen variable tuzup alyp any 0 go tenedik
  // al emi .obs din jardamy menen biz any ozgorto alabyz kachan al get x tarabynan je controllerde ozgortylso 



  increment() => count++;
  // increment function bul bizge ustundo berilgen countty koshuu funcsiasyn atkarat 

  decrement() => count--;
  // al emi decrement anyn teskerisi 
}


// obshem alganda biz bul controllerdi countty je berilgen sandy get x dyn jardamy menen ozgortyygo tyzyp aldyk 