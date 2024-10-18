import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:simple_chat_app/main.dart' as app;

void main() {
  setUrlStrategy(
      PathUrlStrategy()); // Optional: to remove the '#' in the web URL
  app.main(); // This calls your main app entry point
}
