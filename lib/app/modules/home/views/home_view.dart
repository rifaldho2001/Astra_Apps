import 'package:astra_apps/app/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../profile/views/profile_view.dart';
import '../../tugas/views/tugas_view.dart';

class HomeView extends GetView<HomeController> {
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
      body: StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.getDealers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            var listallDocs = snapshot.data!.docs;
            return ListView.builder(
              itemCount: listallDocs.length,
              itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
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
                          onPressed: () => Get.toNamed(Routes.TUGAS, arguments: listallDocs[index].id),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFFF8F8F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            minimumSize: const Size(double.infinity, 80),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.grey,
                                size: 24.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                              Text(
                                "${(listallDocs[index].data() as Map<String, dynamic>)['nama']}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: const Color(0xFFFFFFFF),
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
              )),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(217, 217, 217, 1),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(20, 85, 163, 1),
                  minimumSize: const Size.fromWidth(165),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Icon(
                Icons.menu_book,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileView();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  minimumSize: const Size.fromWidth(165),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Icon(
                Icons.people,
                color: Color.fromRGBO(20, 85, 163, 1),
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
