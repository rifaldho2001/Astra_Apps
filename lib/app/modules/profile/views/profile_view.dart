import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

import '../../login/views/login_view.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            Text(
              'Rivaldhoo',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700
                )
              )
            ),
            Text(
              'Internship',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color.fromRGBO(211, 211, 211, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                )
              )
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                      onPressed: () {
            
            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)
                        )  
                      ),
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(
                          children: [
                            Icon(
                              Icons.mode_edit_outline,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                            'Internship',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              )
                            )
                      ),
                          ],
                        ),
                        )
                    ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                      onPressed: () {
                          Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LoginView();
                  }, 
                  ),
              );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)
                        )  
                      ),
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: Color.fromRGBO(221, 44, 50, 1),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                            'Logout',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color.fromRGBO(221, 44, 50, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              )
                            )
                      ),
                          ],
                        ),
                        )
                    ),
          ]
        ),
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
            spreadRadius: 2.0
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
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              minimumSize: const Size.fromWidth(165),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            )  
                      ), 
            child:  Icon(
                            Icons.menu_book, 
                            color: Color.fromRGBO(20, 85, 163, 1),
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),),
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
              backgroundColor: Color.fromRGBO(20, 85, 163, 1),
              minimumSize: const Size.fromWidth(165),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            )  
                      ), 
            child: Icon(
                            Icons.people,
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),),
          
        ],
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
