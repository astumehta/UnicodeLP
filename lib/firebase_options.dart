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
    apiKey: 'AIzaSyBZvqDzeTDW7sFwj3pIX7qsLsRph795ikA',
    appId: '1:798515219798:web:303b5a896a93e10ed39af7',
    messagingSenderId: '798515219798',
    projectId: 'unicodelp-bc91a',
    authDomain: 'unicodelp-bc91a.firebaseapp.com',
    storageBucket: 'unicodelp-bc91a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBtMMp0hQeNXZ5yXALrIMu__x7Jfg_8Bow',
    appId: '1:798515219798:android:ccf6bdf3c25995b3d39af7',
    messagingSenderId: '798515219798',
    projectId: 'unicodelp-bc91a',
    storageBucket: 'unicodelp-bc91a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAna3cFZ1bq9R_1Ex6c6q3rsYgp7Z4_BKY',
    appId: '1:798515219798:ios:db78023d11163b00d39af7',
    messagingSenderId: '798515219798',
    projectId: 'unicodelp-bc91a',
    storageBucket: 'unicodelp-bc91a.appspot.com',
    iosBundleId: 'com.example.lp1unicode',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAna3cFZ1bq9R_1Ex6c6q3rsYgp7Z4_BKY',
    appId: '1:798515219798:ios:26a6fd2aabd708c1d39af7',
    messagingSenderId: '798515219798',
    projectId: 'unicodelp-bc91a',
    storageBucket: 'unicodelp-bc91a.appspot.com',
    iosBundleId: 'com.example.lp1unicode.RunnerTests',
  );
}
