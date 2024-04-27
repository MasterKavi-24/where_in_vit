// import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
// import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static FirebaseService? _instance;
  FirebaseService._();

  static FirebaseService get instance {
    // Create the instance if it doesn't exist
    _instance ??= FirebaseService._();
    return _instance!;
  }
}
