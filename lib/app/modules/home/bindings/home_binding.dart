import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

class HomeCategory {
  String name;
  String category;

  HomeCategory(
    {
      required this.name,
      required this.category,
    }
  );
}

List<HomeCategory> cities = [
  HomeCategory(name: 'Astra Motor - MT. Haryono', category: 'Balikpapan'),
  HomeCategory(name: 'PT. Harapan Utama Petung', category: 'PPU'),
  HomeCategory(name: 'Astra Motor Tanah Grogot', category: 'Paser'),
  HomeCategory(name: 'Astra Motor - Berau', category: 'Berau'),
  HomeCategory(name: 'Astra Motor - Tarakan', category: 'Tarakan'),
  HomeCategory(name: 'Astra Motor - Tanjung Selor', category: 'Bulungan'),
  HomeCategory(name: 'Delapan Jaya', category: 'Nunukan'),
];