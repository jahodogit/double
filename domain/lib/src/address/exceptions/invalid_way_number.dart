class InvalidWayNumberException implements Exception {
  static String message = 'The way number should be [number - number] format';

  @override
  String toString() => message;
}
