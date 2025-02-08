```dart
import 'dart:async';

Future<void> main() async {
  try {
    final result = await someAsyncOperation();
    print('Result: $result');
  } on TimeoutException catch (e) {
    print('Timeout error: ${e.message}');
    // Handle timeout specifically
  } on FormatException catch (e) {
    print('Format error: ${e.message}');
    // Handle format exception specifically
  } on SocketException catch (e) {
    print('Socket error: ${e.message}');
    // Handle socket exception specifically
  } catch (e) {
    print('An error occurred: $e');
    // Handle other exceptions
  }
}

Future<int> someAsyncOperation() async {
  // Simulate an asynchronous operation that might throw exceptions
  await Future.delayed(Duration(seconds: 2));
  // throw TimeoutException('The operation timed out');
  // throw FormatException('Invalid format');
  // throw SocketException('Network error');
  return 10;
}
```