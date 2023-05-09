import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dealer',
          style: TextStyle(
            color: Color(0xFF212121),
            fontSize: 22,
          ),
        ),
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Color(0xFF212121),
              size: 22,
            ),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: Column(
          children: [
            SizedBox(
              height: 34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7, // jumlah item dalam listview
                itemBuilder: (BuildContext context, int index) {
                  // array of cities
                  List<String> cities = [
                    'Balikpapan',
                    'Berau',
                    'Bulungan',
                    'Nunukan',
                    'PPU',
                    'Paser',
                    'Tarakan',
                  ];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Obx(
                          () => TextButton(
                        onPressed: () {
                          controller.selectCity(index);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: controller.selectedCityIndex.value == index
                              ? const Color(0xFFFDCA40) // ubah warna tombol ketika dipilih
                              : const Color(0x408D8D8D), // warna 25%
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          minimumSize: const Size(0, 34), // lebar maksimum, tinggi 34
                          elevation: 0,
                        ),
                        child: Text(
                          cities[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF212121),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF417CC2),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFFF8F8F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    minimumSize: const Size(double.infinity, 80),
                  ),
                  child: const Text(
                    'Astra Motor MT Haryono',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF212121)),),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xFFF8F8F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        minimumSize: const Size(30, 30),
                      ),
                      child: const Icon(
                        Icons.download_rounded,
                        size: 18,
                        color: Color(0xFF417CC2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ],
        ),
      ),
    );
  }
}