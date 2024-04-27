import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  Future<UserCredential?> signInWithGoogle(String hostedDomain) async {
    final GoogleSignInAccount? gUser =
        await GoogleSignIn(hostedDomain: hostedDomain).signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

/*class GoogleAuth {
  Future<UserCredential?> signInWithGoogle(
      {required BuildContext context, required String hostedDomain}) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    final GoogleSignIn googleSignIn = GoogleSignIn(
      hostedDomain: hostedDomain,
    );

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);
        return userCredential;
      } on FirebaseAuthException {
        return null;
      }
      // if (e.code == 'account-exists-with-different-credential') {
      //   // handle the error here
      // }
      // else if (e.code == 'invalid-credential') {
      //   // handle the error here
      // }
    } else {
      return null;
    }
  }
}*/
