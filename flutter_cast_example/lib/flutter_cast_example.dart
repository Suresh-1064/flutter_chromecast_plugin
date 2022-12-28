
import 'flutter_cast_example_platform_interface.dart';

class FlutterCastExample {
  Future<String?> getPlatformVersion() {
    return FlutterCastExamplePlatform.instance.getPlatformVersion();
  }
}
