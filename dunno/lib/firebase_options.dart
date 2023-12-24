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
/// 
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
    apiKey: 'AIzaSyCelhy4fE1i9Dw4w2Ty4m31U6MTCl5RCsQ',
    appId: '1:840606477535:web:c98ea1fdc244eae9a9cd6a',
    messagingSenderId: '840606477535',
    projectId: 'dunno-dae3f',
    authDomain: 'dunno-dae3f.firebaseapp.com',
    storageBucket: 'dunno-dae3f.appspot.com',
    measurementId: 'G-K1VT0HSVFD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHlqBgmmTb7vyYf3e1RnOOlLRh9pIuSyU',
    appId: '1:840606477535:android:cf198e32047a0ae7a9cd6a',
    messagingSenderId: '840606477535',
    projectId: 'dunno-dae3f',
    storageBucket: 'dunno-dae3f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5SvtHJmK0bAnE7XBTqXH-c4opBDbV3K8',
    appId: '1:840606477535:ios:f7efaf5df16a2ba8a9cd6a',
    messagingSenderId: '840606477535',
    projectId: 'dunno-dae3f',
    storageBucket: 'dunno-dae3f.appspot.com',
    iosBundleId: 'com.example.dunno',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5SvtHJmK0bAnE7XBTqXH-c4opBDbV3K8',
    appId: '1:840606477535:ios:b586e4cd6b51367aa9cd6a',
    messagingSenderId: '840606477535',
    projectId: 'dunno-dae3f',
    storageBucket: 'dunno-dae3f.appspot.com',
    iosBundleId: 'com.example.dunno.RunnerTests',
  );
}
