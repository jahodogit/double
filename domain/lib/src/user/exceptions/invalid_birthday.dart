class InvalidBirthdayException implements Exception {
  static String message = 'The birthday should be before now';

  @override
  String toString() => message;
}
