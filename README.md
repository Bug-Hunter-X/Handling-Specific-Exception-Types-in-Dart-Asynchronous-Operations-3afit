# Handling Specific Exception Types in Dart Asynchronous Operations

This example shows best practices for handling different exception types in asynchronous Dart code.  It demonstrates how to catch and handle `TimeoutException`, `FormatException`, `SocketException`, and generic exceptions separately, providing more specific error handling.

## How to Run

1. Save the code as `bug.dart` and `bugSolution.dart`.
2. Run from your terminal using `dart bug.dart`

## Improvements
The solution focuses on more robust and specific exception handling. The original code would catch any exception but by using specific catch blocks we have more controlled handling based on the type of exception. This improves error reporting and allows for specific actions based on the error type.