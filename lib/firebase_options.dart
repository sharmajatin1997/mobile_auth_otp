import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAUJAq_PYTZJyydFgvqwlLR2F27dvY71-s',
    appId: '1:499480866806:web:e4d813396de6d02394e1d7',
    messagingSenderId: '499480866806',
    projectId: 'otpgenerator-da18f',
    authDomain: 'otpgenerator-da18f.firebaseapp.com',
    storageBucket: 'otpgenerator-da18f.appspot.com',
    measurementId: 'G-L0H79EDXW0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5FrD5Mbbj-JGj5O8VzQ2uQfKkEOd17yc',
    appId: '1:499480866806:android:598057d49972d0d494e1d7',
    messagingSenderId: '499480866806',
    projectId: 'otpgenerator-da18f',
    storageBucket: 'otpgenerator-da18f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcm6klh5Ei5eMLFI04cJbWAqBR-DCvmvY',
    appId: '1:499480866806:ios:d363d8b1ab1eb2b394e1d7',
    messagingSenderId: '499480866806',
    projectId: 'otpgenerator-da18f',
    storageBucket: 'otpgenerator-da18f.appspot.com',
    iosClientId: '499480866806-jj3r9lv1ggjr605jgunu80e9qgfaa3rr.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcm6klh5Ei5eMLFI04cJbWAqBR-DCvmvY',
    appId: '1:499480866806:ios:d363d8b1ab1eb2b394e1d7',
    messagingSenderId: '499480866806',
    projectId: 'otpgenerator-da18f',
    storageBucket: 'otpgenerator-da18f.appspot.com',
    iosClientId: '499480866806-jj3r9lv1ggjr605jgunu80e9qgfaa3rr.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileAuth',
  );
}
