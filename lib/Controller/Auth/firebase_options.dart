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
    apiKey: 'AIzaSyBnm3NspvICFsHbY5vTfVKO4FzIUpsPS7g',
    appId: '1:974848482785:web:85a45b3c0c90cec52c06a0',
    messagingSenderId: '974848482785',
    projectId: 'rentapp-e8da9',
    authDomain: 'rentapp-e8da9.firebaseapp.com',
    storageBucket: 'rentapp-e8da9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTVh3ctNbVg4zy3TqJLVBftvPSmw7MMW0',
    appId: '1:974848482785:android:1598544399d059502c06a0',
    messagingSenderId: '974848482785',
    projectId: 'rentapp-e8da9',
    storageBucket: 'rentapp-e8da9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB21XLSXObRgKPeJftuAol4hQPL44xu1Z4',
    appId: '1:974848482785:ios:94323e8f57000e862c06a0',
    messagingSenderId: '974848482785',
    projectId: 'rentapp-e8da9',
    storageBucket: 'rentapp-e8da9.appspot.com',
    iosClientId: '974848482785-ltp7voeeue7bultvq184dendcjvvonel.apps.googleusercontent.com',
    iosBundleId: 'com.example.appten',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB21XLSXObRgKPeJftuAol4hQPL44xu1Z4',
    appId: '1:974848482785:ios:94323e8f57000e862c06a0',
    messagingSenderId: '974848482785',
    projectId: 'rentapp-e8da9',
    storageBucket: 'rentapp-e8da9.appspot.com',
    iosClientId: '974848482785-ltp7voeeue7bultvq184dendcjvvonel.apps.googleusercontent.com',
    iosBundleId: 'com.example.appten',
  );
}
