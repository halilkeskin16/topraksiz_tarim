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
    apiKey: 'AIzaSyA7q4xy40QqFHTZRFEFKVti5c4BIlJdmpY',
    appId: '1:608164752215:web:9e3ec80754b7985aaa2c12',
    messagingSenderId: '608164752215',
    projectId: 'tokraksiz',
    authDomain: 'tokraksiz.firebaseapp.com',
    storageBucket: 'tokraksiz.firebasestorage.app',
    measurementId: 'G-62SC0GJH4E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPGfP2bXdktqwWYgJtxaHdg3D9ZFxSV3c',
    appId: '1:608164752215:android:021d4c81c2161a50aa2c12',
    messagingSenderId: '608164752215',
    projectId: 'tokraksiz',
    storageBucket: 'tokraksiz.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxfj5ZIUZB_frAORzWmHPD4KW2hMUZXQk',
    appId: '1:608164752215:ios:0cf17df96c0748a7aa2c12',
    messagingSenderId: '608164752215',
    projectId: 'tokraksiz',
    storageBucket: 'tokraksiz.firebasestorage.app',
    iosBundleId: 'com.example.topraksizTarim',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxfj5ZIUZB_frAORzWmHPD4KW2hMUZXQk',
    appId: '1:608164752215:ios:0cf17df96c0748a7aa2c12',
    messagingSenderId: '608164752215',
    projectId: 'tokraksiz',
    storageBucket: 'tokraksiz.firebasestorage.app',
    iosBundleId: 'com.example.topraksizTarim',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA7q4xy40QqFHTZRFEFKVti5c4BIlJdmpY',
    appId: '1:608164752215:web:433983e319edaea3aa2c12',
    messagingSenderId: '608164752215',
    projectId: 'tokraksiz',
    authDomain: 'tokraksiz.firebaseapp.com',
    storageBucket: 'tokraksiz.firebasestorage.app',
    measurementId: 'G-ZR9SHYSHJ5',
  );
}
