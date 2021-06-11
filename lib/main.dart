import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  runApp(const App());
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
