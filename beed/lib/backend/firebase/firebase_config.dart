import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgFl7bdQsZseOz4DUSi2JRVS8QVKLcZdQ",
            authDomain: "beed-final.firebaseapp.com",
            projectId: "beed-final",
            storageBucket: "beed-final.appspot.com",
            messagingSenderId: "884089811902",
            appId: "1:884089811902:web:48dbb7a4ac382dc29effef"));
  } else {
    await Firebase.initializeApp();
  }
}
