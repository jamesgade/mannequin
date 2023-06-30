import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCcPsW4FjmE4Nhs52uJh0BLPmPrEfrt1r8",
            authDomain: "mannequin-f3c77.firebaseapp.com",
            projectId: "mannequin-f3c77",
            storageBucket: "mannequin-f3c77.appspot.com",
            messagingSenderId: "28748669793",
            appId: "1:28748669793:web:0008b75bb6c40b714a9b20"));
  } else {
    await Firebase.initializeApp();
  }
}
