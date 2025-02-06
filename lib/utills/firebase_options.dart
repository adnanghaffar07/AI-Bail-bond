import 'package:firebase_core/firebase_core.dart';
import 'dart:io' show Platform;

class FirebaseConfig {
  static FirebaseOptions get firebaseOptions {
    if (Platform.isAndroid) {
      return const FirebaseOptions(
        apiKey: "AIzaSyDGDbWxfvZyqT9l76g_gCLtBSiLoyJb0rM",
        appId: "aibailbond-4d4fc",
        messagingSenderId: "YOUR_ANDROID_MESSAGING_SENDER_ID",
        projectId: "aibailbond-4d4fc",
        storageBucket: "YOUR_ANDROID_STORAGE_BUCKET",
        databaseURL: "YOUR_ANDROID_DATABASE_URL",
      );
    } else if (Platform.isIOS) {
      return const FirebaseOptions(
        apiKey: "AIzaSyDv7wM9tb5lAPLeVgYC1JX3uEGAVugCvFk",
        appId: "1:937881200676:ios:fcba416a316776a28ed0b1",
        messagingSenderId: "937881200676",
        projectId: "aibailbond-4d4fc",
        storageBucket: "aibailbond-4d4fc.firebasestorage.app",
        databaseURL: "YOUR_IOS_DATABASE_URL", // Optional
      );
    } else if (Platform.isMacOS) {
      return const FirebaseOptions(
          apiKey: "AIzaSyD8uju0zD5rGpM29g4PUm9TtDIVayxmoMg",
          authDomain: "aibailbond-4d4fc.firebaseapp.com",
          projectId: "aibailbond-4d4fc",
          storageBucket: "aibailbond-4d4fc.firebasestorage.app",
          messagingSenderId: "937881200676",
          appId: "1:937881200676:web:2d4c9be8059dae988ed0b1",
          measurementId: "G-Y0YDSR307Y");
    } else if (Platform.isWindows) {
      return const FirebaseOptions(
          apiKey: "AIzaSyD8uju0zD5rGpM29g4PUm9TtDIVayxmoMg",
          authDomain: "aibailbond-4d4fc.firebaseapp.com",
          projectId: "aibailbond-4d4fc",
          storageBucket: "aibailbond-4d4fc.firebasestorage.app",
          messagingSenderId: "937881200676",
          appId: "1:937881200676:web:2d4c9be8059dae988ed0b1",
          measurementId: "G-Y0YDSR307Y");
    } else {
      throw UnsupportedError('Platform not supported for Firebase.');
    }
  }
}
