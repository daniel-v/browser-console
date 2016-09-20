@JS()
library browser_console.js;

import 'package:js/js.dart';
import 'package:reflectable/reflectable.dart';

class StaticInvokeReflector extends Reflectable {
  const StaticInvokeReflector() : super(staticInvokeCapability);
}

const staticInvokeReflector = const StaticInvokeReflector();

@JS('console')
@staticInvokeReflector
abstract class Console {
  external static void log(p1, [p2, p3, p4, p5, p6, p7, p8]);

  external static void info(p1, [p2, p3, p4, p5, p6, p7, p8]);

  external static void warn(p1, [p2, p3, p4, p5, p6, p7, p8]);

  external static void error(p1, [p2, p3, p4, p5, p6, p7, p8]);

  external static void group(p1, [p2, p3, p4, p5, p6, p7, p8]);

  external static void groupEnd();

  @JS('assert')
  external static void assertOn(p1, p2);

  static ClassMirror consoleMirror = staticInvokeReflector.reflectType(Console);
}
