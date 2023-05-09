import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tugas_controller.dart';

class TugasView extends GetView<TugasController> {
  const TugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left),
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.calendar_month,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: Text("ASTRA MOTOR - MT. HARYONO", style: TextStyle(fontSize: 30),),
      )
    );
  }
}
