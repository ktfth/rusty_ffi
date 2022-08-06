import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'package:ffi/ffi.dart';

typedef NativeRustHelloWorldFunction = ffi.Pointer<Utf8> Function();
typedef NativeHelloWorldFunction = Pointer<Utf8> Function();

void main(List<String> arguments) {
  ffi.DynamicLibrary dl =
      ffi.DynamicLibrary.open("rusty_ffi/target/debug/rusty_ffi.dll");
  var helloWorld =
      dl.lookupFunction<NativeRustHelloWorldFunction, NativeHelloWorldFunction>(
          'hello_world');
  print(helloWorld().toDartString());
}
