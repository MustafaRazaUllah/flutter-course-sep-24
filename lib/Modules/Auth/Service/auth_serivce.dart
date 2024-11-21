import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sessiom3flutterproject/Utils/customtoast.dart';

mixin AuthSerivce {
  final _authService = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<bool> registerUserService({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String address,
  }) async {
    bool isRegistered = false;
    try {
      // Step 1: Create User
      var value = await _authService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Step 2: Save User Data
      if (value.user != null) {
        _firestore.collection("users").doc(value.user?.uid).set({
          "name": name,
          "email": email,
          "phone": phone,
          "address": address,
        });
        isRegistered = true;
        Customtoast.success("User Registered Successfully");
      }
    } catch (e) {
      print(e);
    }
    return isRegistered;
  }
}
