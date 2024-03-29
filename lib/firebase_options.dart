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
    apiKey: 'AIzaSyCRHIwBMJfAyNajfNLnYjdtQcGmXzvKD_k',
    appId: '1:457773606585:web:393b7e6c61870655545d68',
    messagingSenderId: '457773606585',
    projectId: 'smart-healthcare-project',
    authDomain: 'smart-healthcare-project.firebaseapp.com',
    storageBucket: 'smart-healthcare-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcI8Epj37t8olpYvorLj-EQYOiMyu-dBY',
    appId: '1:457773606585:android:6d077b12363897c5545d68',
    messagingSenderId: '457773606585',
    projectId: 'smart-healthcare-project',
    storageBucket: 'smart-healthcare-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4TdhEo8E8wQkPBTOiMHssf3977_iffD0',
    appId: '1:457773606585:ios:abab2f8acbec8c58545d68',
    messagingSenderId: '457773606585',
    projectId: 'smart-healthcare-project',
    storageBucket: 'smart-healthcare-project.appspot.com',
    iosBundleId: 'com.example.doctor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4TdhEo8E8wQkPBTOiMHssf3977_iffD0',
    appId: '1:457773606585:ios:593623c37e822d6b545d68',
    messagingSenderId: '457773606585',
    projectId: 'smart-healthcare-project',
    storageBucket: 'smart-healthcare-project.appspot.com',
    iosBundleId: 'com.example.doctor.RunnerTests',
  );
}
