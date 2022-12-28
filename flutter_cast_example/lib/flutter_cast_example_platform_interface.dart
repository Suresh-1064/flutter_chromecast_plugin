import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_cast_example_method_channel.dart';

abstract class FlutterCastExamplePlatform extends PlatformInterface {
  /// Constructs a FlutterCastExamplePlatform.
  FlutterCastExamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCastExamplePlatform _instance = MethodChannelFlutterCastExample();

  /// The default instance of [FlutterCastExamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCastExample].
  static FlutterCastExamplePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCastExamplePlatform] when
  /// they register themselves.
  static set instance(FlutterCastExamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
