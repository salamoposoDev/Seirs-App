// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDi4-XmM_HNaIIx7-to0PgCTYthJrcX3uM',
    appId: '1:745804531283:web:b16fce6d607f8fbfc628a6',
    messagingSenderId: '745804531283',
    projectId: 'seirs-6b55c',
    authDomain: 'seirs-6b55c.firebaseapp.com',
    databaseURL: 'https://seirs-6b55c-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'seirs-6b55c.appspot.com',
    measurementId: 'G-9QC8XHQ0PZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6tT3eEEvppZtJJV_NDDCocbAzUr2wxy4',
    appId: '1:745804531283:android:ba68ccad10368ed5c628a6',
    messagingSenderId: '745804531283',
    projectId: 'seirs-6b55c',
    databaseURL: 'https://seirs-6b55c-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'seirs-6b55c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbRFPqPXdlGdERBN8TsianhnBhu2unczE',
    appId: '1:745804531283:ios:835834fcc5622b9cc628a6',
    messagingSenderId: '745804531283',
    projectId: 'seirs-6b55c',
    databaseURL: 'https://seirs-6b55c-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'seirs-6b55c.appspot.com',
    iosClientId: '745804531283-a5ag3iue56j4mdp5v1gtcu4q1jrbd6dd.apps.googleusercontent.com',
    iosBundleId: 'com.example.seirsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbRFPqPXdlGdERBN8TsianhnBhu2unczE',
    appId: '1:745804531283:ios:835834fcc5622b9cc628a6',
    messagingSenderId: '745804531283',
    projectId: 'seirs-6b55c',
    databaseURL: 'https://seirs-6b55c-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'seirs-6b55c.appspot.com',
    iosClientId: '745804531283-a5ag3iue56j4mdp5v1gtcu4q1jrbd6dd.apps.googleusercontent.com',
    iosBundleId: 'com.example.seirsApp',
  );
}
