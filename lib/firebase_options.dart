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
    apiKey: 'AIzaSyD8_8C8rna6HGO1n7w0T1RMRSZyB3CZWRI',
    appId: '1:777748030799:web:5bfaa6fcf93c3e5108d13a',
    messagingSenderId: '777748030799',
    projectId: 'camera-app-80a5e',
    authDomain: 'camera-app-80a5e.firebaseapp.com',
    storageBucket: 'camera-app-80a5e.appspot.com',
    measurementId: 'G-SR32KNM0GD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRloJlQp6Bj9h-THfRTtrzzHUxZ7ToKLY',
    appId: '1:777748030799:android:f730f46bb883311e08d13a',
    messagingSenderId: '777748030799',
    projectId: 'camera-app-80a5e',
    storageBucket: 'camera-app-80a5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7HUl94sx2qo0oGhL-sDEgNb7V7yKi53U',
    appId: '1:777748030799:ios:e8ff132bbc2fc66608d13a',
    messagingSenderId: '777748030799',
    projectId: 'camera-app-80a5e',
    storageBucket: 'camera-app-80a5e.appspot.com',
    iosClientId: '777748030799-61306nkbkv0sekku4khmp3h8cdlhjbaa.apps.googleusercontent.com',
    iosBundleId: 'com.example.cameraApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7HUl94sx2qo0oGhL-sDEgNb7V7yKi53U',
    appId: '1:777748030799:ios:e8ff132bbc2fc66608d13a',
    messagingSenderId: '777748030799',
    projectId: 'camera-app-80a5e',
    storageBucket: 'camera-app-80a5e.appspot.com',
    iosClientId: '777748030799-61306nkbkv0sekku4khmp3h8cdlhjbaa.apps.googleusercontent.com',
    iosBundleId: 'com.example.cameraApp',
  );
}
