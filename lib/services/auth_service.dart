import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../shared/shared.dart';

class AuthService {
  AuthService();

  Future<AuthReponseError?> loginWith(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      var authCredential = userCredential.user;
      final prefs = Get.find<SharedPreferences>();
      if (authCredential != null && authCredential.uid.isNotEmpty) {
        prefs.setString(StorageConstants.token, authCredential.uid);
        return null;
      } else {
        return AuthReponseError.Unknown;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return AuthReponseError.UnexistUser;
      } else if (e.code == 'wrong-password') {
        return AuthReponseError.IncorrrectPassword;
      }
    } catch (e) {
      print(e);
      return AuthReponseError.Unknown;
    }
  }

  Future<AuthReponseError?> signUpWith(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      var authCredential = userCredential.user;
      if (authCredential != null && authCredential.uid.isNotEmpty) {
        return null;
      } else {
        return AuthReponseError.Unknown;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return AuthReponseError.WeakPassword;
      } else if (e.code == 'email-already-in-use') {
        return AuthReponseError.ExistUser;
      }
    } catch (e) {
      print(e);
      return AuthReponseError.Unknown;
    }
  }
}
