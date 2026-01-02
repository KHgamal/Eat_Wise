class CacheFailure implements Exception {
final String message;
CacheFailure([this.message = 'Cache error']);
@override
String toString() => 'CacheFailure: $message';
}