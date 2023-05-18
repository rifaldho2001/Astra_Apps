import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tambah_tugas_controller.dart';

class TambahTugasView extends GetView<TambahTugasController> {
  const TambahTugasView({Key? key}) : super(key: key);

  // int _value = 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop( );
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          iconSize: 20,
          color: Colors.black,
        ),
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text("Nama Tugas", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, ),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan nama tugas',
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text("Temuan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan temuan yang perlu diperbaiki',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text("Activity Perbaikan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan activity perbaikan',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text("Dealer", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan letak dealer',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text("Lokasi Temuan", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tuliskan lokasi temuan',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Flexible(child: Text("Nama PIC",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child:  TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'PIC yang melakukan temuan',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Dokumentasi Temuan",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFFD3D3D3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                            ),
                            minimumSize: const Size(216, 144),
                          ),
                          child: Icon(
                            Icons.add_rounded,
                            color: Color(0xFFF8F8F8),
                            size: 40.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
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

                Container(
                  padding: EdgeInsets.all(15), // Tambahkan padding dengan nilai 15
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text("Tanggal Tengat Tugas", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25,bottom: 50),
                        child: Column(children: [ 
                          Row(children: [
                            Radio(
                              value: 1, 
                              groupValue: 1, 
                              onChanged: (value){},
                            ),
                              SizedBox(width: 10.0,),
                              Text("DONE"),

                               Radio(
                              value: 2, 
                              groupValue: 2, 
                              onChanged: (value){},
                            ),
                              SizedBox(width: 10.0,),
                              Text("ON Progres"),
                          ],),
                          Row(children: [
                            Radio(
                              value: 3, 
                              groupValue: 3, 
                              onChanged: (value){},
                            ),
                              SizedBox(width: 10.0,),
                              Text("DROP"),

                               Radio(
                              value: 4, 
                              groupValue: 4, 
                              onChanged: (value){},
                            ),
                              SizedBox(width: 10.0,),
                              Text("IDLE"),
                          ],),
  
                        ]), 
                      ),
                    ],
                  ),
                ),

              ],
          ),
        ),
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1455A3),
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          padding: EdgeInsetsDirectional.all(15),
          minimumSize: Size(30, 30),
        ),
        onPressed: () {
            Navigator.of(context).pop( );
        },
        child: Icon(
          Icons.check_rounded,
          size: 30,
          color: Color(0xFFF8F8F8),
        ),

    ),
    );
  }
}
