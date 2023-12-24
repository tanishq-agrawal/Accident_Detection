import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDegDJMLO3EgCsupgaXJf34EEC92BYLaAE",
            authDomain: "fir-a-f-e-guard-yzabrc.firebaseapp.com",
            projectId: "s-a-f-e-guard-yzabrc",
            storageBucket: "s-a-f-e-guard-yzabrc.appspot.com",
            messagingSenderId: "81174669265",
            appId: "1:81174669265:web:221a710dcc2771992de2f0"));
  } else {
    await Firebase.initializeApp();
  }
}
