// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:kira/src/kira.dart';

// FirebaseAnalytics analytics;

// Future<void> initializeFirebaseServices() async {
//   // Wait for Firebase to initialize
//   await Firebase.initializeApp();

//   if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
//     await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
//   }

//   // Pass all uncaught errors to Crashlytics.
//   final Function originalOnError = FlutterError.onError;

//   FlutterError.onError = (FlutterErrorDetails errorDetails) async {
//     await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
//     // Forward to original handler.
//     originalOnError(errorDetails);
//   };
// }

void main() {
  // analytics = FirebaseAnalytics();
  // initializeFirebaseServices();

  runApp(Kira());
}
