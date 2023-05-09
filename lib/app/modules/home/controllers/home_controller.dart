import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var selectedCityIndex = 0.obs;

  void selectCity(int index) {
    selectedCityIndex.value = index;
  }
}
