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
    apiKey: 'AIzaSyBDWidegGYtxb7qMT-zIRxsFSy9c1xeEqA',
    appId: '1:995071842217:web:02a7eea3999da04974d6b8',
    messagingSenderId: '995071842217',
    projectId: 'glovo-pzlj2g',
    authDomain: 'glovo-pzlj2g.firebaseapp.com',
    storageBucket: 'glovo-pzlj2g.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvzCYi1uZX1y4of7ugryd9mpmpHhsIwIA',
    appId: '1:995071842217:android:c33386fff59e33e574d6b8',
    messagingSenderId: '995071842217',
    projectId: 'glovo-pzlj2g',
    storageBucket: 'glovo-pzlj2g.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOyt7l1qm96wOYGBbdydkiUJcSumxH5-0',
    appId: '1:995071842217:ios:d7e15dda2511fc6e74d6b8',
    messagingSenderId: '995071842217',
    projectId: 'glovo-pzlj2g',
    storageBucket: 'glovo-pzlj2g.firebasestorage.app',
    androidClientId: '995071842217-5uj89e4jcvivgk92urm10p420b4mh5d4.apps.googleusercontent.com',
    iosClientId: '995071842217-sq0ebc9pr7get8c0etqpdrftj3iigcpv.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOyt7l1qm96wOYGBbdydkiUJcSumxH5-0',
    appId: '1:995071842217:ios:d7e15dda2511fc6e74d6b8',
    messagingSenderId: '995071842217',
    projectId: 'glovo-pzlj2g',
    storageBucket: 'glovo-pzlj2g.firebasestorage.app',
    androidClientId: '995071842217-5uj89e4jcvivgk92urm10p420b4mh5d4.apps.googleusercontent.com',
    iosClientId: '995071842217-sq0ebc9pr7get8c0etqpdrftj3iigcpv.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBDWidegGYtxb7qMT-zIRxsFSy9c1xeEqA',
    appId: '1:995071842217:web:b29b6d109b6e690574d6b8',
    messagingSenderId: '995071842217',
    projectId: 'glovo-pzlj2g',
    authDomain: 'glovo-pzlj2g.firebaseapp.com',
    storageBucket: 'glovo-pzlj2g.firebasestorage.app',
  );
}
