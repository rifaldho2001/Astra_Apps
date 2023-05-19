import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class TugasController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Object?>> getDealers(String docID) {
    DocumentReference dealers = firestore.collection('dealers').doc(docID);

    return dealers.snapshots();
  }
}
