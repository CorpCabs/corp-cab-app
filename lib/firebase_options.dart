// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCZAcEC5Yuic-lGfAqd9Y_4h4WzjHn7CKQ',
    appId: '1:571226863812:web:11fbd19f057db78d833191',
    messagingSenderId: '571226863812',
    projectId: 'corpcab-auth',
    authDomain: 'corpcab-auth.firebaseapp.com',
    storageBucket: 'corpcab-auth.firebasestorage.app',
    measurementId: 'G-9YHN6LWMFH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWIboFS6cKCip3gjaQCHBOqQPBXOT_pM4',
    appId: '1:571226863812:android:4aa3164f2172a011833191',
    messagingSenderId: '571226863812',
    projectId: 'corpcab-auth',
    storageBucket: 'corpcab-auth.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMWByhsjM_UqCixdT1oyRROkfkZEvMX_E',
    appId: '1:571226863812:ios:bc2d0be4b8159330833191',
    messagingSenderId: '571226863812',
    projectId: 'corpcab-auth',
    storageBucket: 'corpcab-auth.firebasestorage.app',
    iosBundleId: 'com.example.corpCabApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMWByhsjM_UqCixdT1oyRROkfkZEvMX_E',
    appId: '1:571226863812:ios:bc2d0be4b8159330833191',
    messagingSenderId: '571226863812',
    projectId: 'corpcab-auth',
    storageBucket: 'corpcab-auth.firebasestorage.app',
    iosBundleId: 'com.example.corpCabApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCZAcEC5Yuic-lGfAqd9Y_4h4WzjHn7CKQ',
    appId: '1:571226863812:web:54036ea686997fc6833191',
    messagingSenderId: '571226863812',
    projectId: 'corpcab-auth',
    authDomain: 'corpcab-auth.firebaseapp.com',
    storageBucket: 'corpcab-auth.firebasestorage.app',
    measurementId: 'G-J752P3V2V1',
  );
}