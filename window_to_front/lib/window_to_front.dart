
import 'dart:async';

import 'package:flutter/services.dart';

class WindowToFront {
  static const MethodChannel _channel =
      const MethodChannel('window_to_front');

  static Future<void> activate() async {
    await _channel.invokeMethod('activate');
  }

}
