import 'dart:async';

import 'package:flutter/services.dart';

class AwsApi {
  static const MethodChannel _channel =
      const MethodChannel('aws_api');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
