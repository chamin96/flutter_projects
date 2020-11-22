import 'package:brew_crew/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create a user object
  UserModel _userFirebase (User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // sign in anonymously
  Future signInAnon() async {

    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User user = userCredential.user;
      return _userFirebase(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password
  // register
  // sign out
}