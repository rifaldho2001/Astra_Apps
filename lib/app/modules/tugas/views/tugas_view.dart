import 'package:astra_apps/app/modules/home/views/home_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/tugas_controller.dart';
import '../../tambah_tugas/views/tambah_tugas_view.dart';
import '../../home/views/home_view.dart';

class TugasView extends GetView<TugasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          iconSize: 20,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0,
      ),
      body: StreamBuilder<DocumentSnapshot<Object?>>(
        stream: controller.getDealers(Get.arguments),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            var data = snapshot.data!.data() as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    data["nama"],
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 26.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            color: Colors.blue,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            color: Colors.green,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 250,
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
                              minimumSize: const Size(double.infinity, 180),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.circle,
                                        color: Colors.grey,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Tugas 2",
                                          style: TextStyle(fontSize: 30, color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Status :",
                                    style: TextStyle(fontSize: 20, color: Colors.black),
                                  ),
                                  Text(
                                    "Progress kerja :",
                                    style: TextStyle(fontSize: 20, color: Colors.black),
                                  ),
                                  Text(
                                    "Memperbaiki lantai - lantai yang retak di showroom :",
                                    style: TextStyle(fontSize: 20, color: Colors.black),
                                  ),
                                ],
                              ),
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
                                  backgroundColor: const Color(0xFFF8F8F8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  minimumSize: const Size(50, 30),
                                ),
                                child: const Icon(
                                  Icons.menu,
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
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          minimumSize: Size(100, 40), //////// HERE
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return TambahTugasView();
              },
            ),
          );
        },
        child: Text('+  Tambahkan Tugas '),
      ),
    );
  }
}
