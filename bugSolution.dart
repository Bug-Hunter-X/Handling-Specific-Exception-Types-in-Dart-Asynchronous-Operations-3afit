```dart
import 'dart:async';
import 'dart:io';

Future<void> main() async {
  try {
    final result = await someAsyncOperation();
    print('Result: $result');
  } on TimeoutException catch (e) {
    print('Timeout error: ${e.message}');
    // Handle timeout specifically, e.g., retry the operation
  } on FormatException catch (e) {
    print('Format error: ${e.message}');
    // Handle format exception specifically, e.g., show user-friendly message
  } on SocketException catch (e) {
    print('Socket error: ${e.message}');
    // Handle socket exception specifically, e.g., display network error message
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle other exceptions, log the error, etc.
  }
}

Future<int> someAsyncOperation() async {
  // Simulate an asynchronous operation that might throw exceptions
  await Future.delayed(Duration(seconds: 2));
  // Uncomment to test different exceptions
  // throw TimeoutException('The operation timed out');
  // throw FormatException('Invalid format');
  // throw SocketException('Network error');
  return 10;
}
```