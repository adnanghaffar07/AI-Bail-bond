class Logger {
  static void logError(String message) {
    // Log to console, or send to Firebase Analytics or a custom logging service.
    print('ERROR: $message');
  }
}
