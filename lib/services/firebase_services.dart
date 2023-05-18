import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices{
  CollectionReference users = FirebaseFirestore.instance.collection('users');

}