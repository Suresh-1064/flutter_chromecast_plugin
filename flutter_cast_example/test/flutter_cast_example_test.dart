import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_cast_example/flutter_cast_example.dart';
import 'package:flutter_cast_example/flutter_cast_example_platform_interface.dart';
import 'package:flutter_cast_example/flutter_cast_example_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCastExamplePlatform
    with MockPlatformInterfaceMixin
    implements FlutterCastExamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCastExamplePlatform initialPlatform = FlutterCastExamplePlatform.instance;

  test('$MethodChannelFlutterCastExample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCastExample>());
  });

  test('getPlatformVersion', () async {
    FlutterCastExample flutterCastExamplePlugin = FlutterCastExample();
    MockFlutterCastExamplePlatform fakePlatform = MockFlutterCastExamplePlatform();
    FlutterCastExamplePlatform.instance = fakePlatform;

    expect(await flutterCastExamplePlugin.getPlatformVersion(), '42');
  });
}
