import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:graduation_project2/pages/Cart.dart';

class Notificationn with ChangeNotifier {
  int count = 0;
  // double sum = 0;
  // List<Cart> selectedProdact = [];
  // Map<String, dynamic> l1 = {};
  int getCount() {
    FirebaseFirestore.instance
        .collection('notifiayYYY')
        .where("uidStorOwner",
            isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((QuerySnapshot snapshot) {
      count = snapshot.docs.length;
    });

    return count;
  }

  void ref() 
  {


      notifyListeners();

  }
  // void add(value) {
  //   selectedProdact.add(value);
  //   notifyListeners();
  // }

  // void removeAtIndex(index) {
  //   selectedProdact.removeAt(index);
  //   notifyListeners();
  // }
}
