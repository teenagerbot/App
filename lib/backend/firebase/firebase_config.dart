import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAMXP6l3bXbyMtPuxPT0JPlY5KaAl9_bsU",
            authDomain: "app-flutter-2bfc9.firebaseapp.com",
            projectId: "app-flutter-2bfc9",
            storageBucket: "app-flutter-2bfc9.appspot.com",
            messagingSenderId: "376300474171",
            appId: "1:376300474171:web:6583ca4dce23c63130f11e"));
  } else {
    await Firebase.initializeApp();
  }
}
