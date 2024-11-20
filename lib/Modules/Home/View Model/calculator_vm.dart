import 'package:get/get.dart';

class CalculatorViewModel extends GetxController {
  RxDouble totalValue = 0.0.obs;

  RxList<String> values = <String>[].obs;



  void acMethod (){
    totalValue.value = 0.0;
    values.clear();
  }
}
