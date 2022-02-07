import 'dart:io';
import 'package:integration_test/integration_test_driver.dart';

Future<void> main() async {
  await Process.run(
      'C:/Users/Josh/AppData/Local/Android/Sdk/platform-tools/adb.exe', [
    'shell',
    'pm',
    'grant',
    'com.example.sample_app',
    'android.permission.READ_EXTERNAL_STORAGE'
  ]);
  await Process.run(
      'C:/Users/Josh/AppData/Local/Android/Sdk/platform-tools/adb.exe', [
    'shell',
    'pm',
    'grant',
    'com.example.sample_app',
    'android.permission.WRITE_EXTERNAL_STORAGE'
  ]);
  await integrationDriver();
}
