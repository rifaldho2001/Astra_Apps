import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_tugas_controller.dart';

class EditTugasView extends GetView<EditTugasController> {
  const EditTugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text('Tugas 1',style: TextStyle(color: Colors.black, fontSize: 40),),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left),
          iconSize: 60,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.calendar_month,
              size: 40,
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Nama Tugas", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, ),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Masukkan Nama Tugas',
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Nama Temuan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Masukkan Nama Temuan',
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Activity Perbaikan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan Activity Perbaikan',
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Dealer", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan Letak Dealer',
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Lokasi Temuan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan Lokasi Temuan',
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Lokasi Temuan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 30, right: 25),
                        child:  ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              minimumSize: const Size(double.infinity, 180),
                            ),
                            child: Icon(
                              Icons.image,
                              color: Colors.black,
                              size: 50.0,
                              semanticLabel: 'Text to announce in accessibility modes',
                            )
                        )
                      ),

                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Tanggal Progres Perbaikan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Masukkan Tanggal Perbaikan',
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Flexible(child: Text("PIC yang melakukan Progres Update Temuan",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Nama Panjang C',
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          Text("Tanggal Tengat Tugas", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25,bottom: 50),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Masukkan Tanggal Tegat tugas',
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ],
          ),
        ),
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          padding: EdgeInsetsDirectional.symmetric(vertical: 35, horizontal:25 ),
          minimumSize: Size(100, 10), //////// HERE
        ),
        onPressed: () {},
        child: Icon(
          Icons.add_circle_outline,
          size: 35,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),

    ),
    );
  }
}
