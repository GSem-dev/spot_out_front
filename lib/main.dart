import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:device_preview/device_preview.dart';

import 'package:spot_out/screens/on_boarding/on_boarding_screen.dart';
import 'package:spot_out/theme/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  Widget rootWidget;
  if (kIsWeb) {
    var devicePreview = DevicePreview(
        enabled: true,
        defaultDevice : Devices.ios.iPadMini,
        plugins: [
          //const ScreenshotPlugin(),
          //const FileExplorerPlugin(),
          //const SharedPreferencesExplorerPlugin(),
        ],
        builder: (context) => App()
    );
    rootWidget = devicePreview;
  }
  else {
    rootWidget = new App();
  }
  runApp(rootWidget);
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpotOut',
      theme: AppThemes.mainTheme,
      home: const OnBoardingScreen(),
    );
  }
}
