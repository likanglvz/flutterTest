import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloTest/helloTest.dart';

void main() {
  const MethodChannel channel = MethodChannel('helloTest');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HelloTest.platformVersion, '42');
  });
}
