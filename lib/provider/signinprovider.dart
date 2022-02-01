
import 'package:finder/screens/root/root.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';


 class SignInProvider with ChangeNotifier{
  final googleSignIn=GoogleSignIn();
  BuildContext? context;

  GoogleSignInAccount? _currentUser;

  GoogleSignInAccount get currentUser=>_currentUser!;

  Future googleLogin() async{

    try{
      final googleuser=await googleSignIn.signIn();

      if(googleuser==null) {
        return;
      }
      else
      {
        _currentUser=googleuser;
      }

      final GoogleSignInAuthentication? googleAuth = await googleuser.authentication;


      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await  FirebaseAuth.instance.signInWithCredential(credential).then((value) {
        return Navigator.push(
          context!,
          MaterialPageRoute(builder: (context) =>  Root()),
        );
      });

      print("Account Created");
    }catch( e){
      print(e);
    }


  notifyListeners();

  }

}