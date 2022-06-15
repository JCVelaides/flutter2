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
    apiKey: 'AIzaSyAi9PZPDziyBl4VM7vLrj4-7leE9GImnDo',
    appId: '1:319531341731:web:8648067769fd2920caec16',
    messagingSenderId: '319531341731',
    projectId: 'flutterapp-f5a9c',
    authDomain: 'flutterapp-f5a9c.firebaseapp.com',
    storageBucket: 'flutterapp-f5a9c.appspot.com',
    measurementId: 'G-FWWHMMZ5TP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1Rovkjf2HRmG565iLlvhM3AolrVmc1iw',
    appId: '1:319531341731:android:b8a1b88b405163d5caec16',
    messagingSenderId: '319531341731',
    projectId: 'flutterapp-f5a9c',
    storageBucket: 'flutterapp-f5a9c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbXSFyQ85FNtst5qXvNTBph1H94Kcaqk4',
    appId: '1:319531341731:ios:364d5b0cf817282fcaec16',
    messagingSenderId: '319531341731',
    projectId: 'flutterapp-f5a9c',
    storageBucket: 'flutterapp-f5a9c.appspot.com',
    iosClientId: '319531341731-4j4mc3k9oerfgqb3cd8dj5pufgvp35ka.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbXSFyQ85FNtst5qXvNTBph1H94Kcaqk4',
    appId: '1:319531341731:ios:364d5b0cf817282fcaec16',
    messagingSenderId: '319531341731',
    projectId: 'flutterapp-f5a9c',
    storageBucket: 'flutterapp-f5a9c.appspot.com',
    iosClientId: '319531341731-4j4mc3k9oerfgqb3cd8dj5pufgvp35ka.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
