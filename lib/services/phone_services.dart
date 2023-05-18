import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wasit_bussiness_app/screens/confirmPhone.dart';
import 'package:wasit_bussiness_app/services/firebase_services.dart';
import 'package:wasit_bussiness_app/widgets/bottomNavi.dart';

class PhoneService {
  FirebaseServices service = FirebaseServices();

  FirebaseAuth auth = FirebaseAuth.instance;
  User user = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  addUser(context, uid) async {
    final QuerySnapshot result = await users.where('uid', isEqualTo: uid).get();

    List<DocumentSnapshot> document = result.docs;

    if (document.isNotEmpty) {
      Get.offAll(() => BottomNavigationExample());
    } else {
      return service.users.doc(user.uid).set({
        'uid': user.uid,
        'mobile': user.phoneNumber,
        'email': '',
        'image': '',
        'city': '',
        'name': ''
      }).then((value) {
        Get.offAll(() => BottomNavigationExample());
      }).catchError((error) => print('failed to add user : $error'));
    }
  }

  verificationPhoneNumber(BuildContext context, number) async {
    final PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential credential) async {
      await auth.signInWithCredential(credential);
    };

    final PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException e) {
      if (e.code == 'invalid-phone-number') {
        print('The provider phone number is not valid.');
      }
      print('The error is ${e.code}');
    };

    final PhoneCodeSent codeSent = (String verId, int resendToken) async {
      await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (_) => OTP(
                    number: number,
                    verId: verId,
                  )));
    };

    try {
      auth.verifyPhoneNumber(
          phoneNumber: number,
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          timeout: Duration(seconds: 60),
          codeAutoRetrievalTimeout: (String verificationId) {
            print(verificationId);
          });
    } catch (e) {
      print('Error ${e.toString()}');
    }
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
