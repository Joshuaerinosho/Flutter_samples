import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/widget_test.dart';

// Run This: flutter test integration_test/app_test.dart
// flutter drive --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Integration Tests', () {
    testWidgets('Increment Integration test', (tester) async {
      await incrementSmokeTest(tester);
    });
  });
}
