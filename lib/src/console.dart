import 'dart:js';

import 'console_wrapper.dart';

/// Dart wrapper for console calls
///
/// For function signatures, see [API docs](https://developers.google.com/web/tools/chrome-devtools/debug/console/console-reference?hl=en#consolegroupobject-object-)
class JSConsole {

  const JSConsole();

  /// Checks if there if argument count matches that of the native wrapper
  ///
  /// Dart does not support varargs and thus some black magic is needed to support variadic functions.
  /// This method ensures that the number of arguments is no more than the maximum number of
  /// parameters in the signature of the wrapper methods in console_wrapper.dart.
  ///
  /// Throws [ArgumentError] of params is too large.
  void checkArgumentCount(Iterable<Object> params) {
    if (params != null && params.length > 7)
      throw new ArgumentError('Too many members of params.');
  }

  void log(Object param, [Iterable<Object> params]) {
    checkArgumentCount(params);
    Console.consoleMirror.invoke('log', [param]
      ..addAll(params ?? []));
  }

  void info(Object param, [Iterable<Object> params]) {
    checkArgumentCount(params);
    Console.consoleMirror.invoke('info', [param]
      ..addAll(params ?? []));
  }

  void warn(Object param, [Iterable<Object> params]) {
    checkArgumentCount(params);
    Console.consoleMirror.invoke('warn', [param]
      ..addAll(params ?? []));
  }

  void error(Object param, [Iterable<Object> params]) {
    checkArgumentCount(params);
    Console.consoleMirror.invoke('error', [param]
      ..addAll(params ?? []));
  }

  void group(String groupName, [Iterable<Object> params]) {
    checkArgumentCount(params);
    Console.consoleMirror.invoke('group', [groupName]
      ..addAll(params ?? []));
  }

  void groupEnd() {
    Console.groupEnd();
  }

  void assertOn(expression, Object object) {
    if(object is Map) {
      new JsObject.jsify(object);
      Console.consoleMirror.invoke('assertOn', [expression, new JsObject.jsify(object)]);
    } else {
      Console.consoleMirror.invoke('assertOn', [expression, object]);
    }
  }

  void clear() {
    throw new UnimplementedError();
  }

  void count(label) {
    throw new UnimplementedError();
  }

  void debug(Object obj, [Iterable<Object> params]) {
    throw new UnimplementedError();
  }

  void dir(object) {
    throw new UnimplementedError();
  }

  void dirxml(object) {
    throw new UnimplementedError();
  }

  void groupCollapsed(String groupName, [Iterable<Object> params]) {
    throw new UnimplementedError();
  }

  void profile([label]) {
    throw new UnimplementedError();
  }

  void profileEnd() {
    throw new UnimplementedError();
  }

  void time(label) {
    throw new UnimplementedError();
  }

  void timeEnd(label) {
    throw new UnimplementedError();
  }

  void timeStamp([label]) {
    throw new UnimplementedError();
  }

  void trace(object) {
    throw new UnimplementedError();
  }
}