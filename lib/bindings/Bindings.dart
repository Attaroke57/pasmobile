import 'package:get/get.dart';
import 'package:pasmobile/controller/dashboardcontroller.dart';

class MyBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => Dashboardcontroller() );

}
}