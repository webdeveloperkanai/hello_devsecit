import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hello_devsecit_platform_interface.dart';

/// An implementation of [HelloDevsecitPlatform] that uses method channels.
class MethodChannelHelloDevsecit extends HelloDevsecitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hello_devsecit');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getAndroidId() async {
    final android = await methodChannel.invokeMethod<String>('getAndroidId');
    return android;
  }
}
