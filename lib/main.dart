import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:device_preview/device_preview.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:spot_out/screens/on_boarding/on_boarding_screen.dart';
import 'package:spot_out/theme/app_colors.dart';
import 'package:spot_out/theme/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  //next 2 lines for debugging purpose to enable/disable usage DevicePreview in Web mode
  // linter rule https://dart-lang.github.io/linter/lints/literal_only_boolean_expressions.html
  // does not allow to use literal boolean expression in 'if' statement
  var showInDevicePreview = kIsWeb;
  //showInDevicePreview = false;

  Widget? devicePreview;

  if (showInDevicePreview) {
    devicePreview = DevicePreview(
        defaultDevice : Devices.ios.iPadMini,
        builder: ScalingHelper.builder,
    );
  }

  if (devicePreview != null) { runApp(devicePreview); }
  else                       { runApp(const App());   }
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetsApp = WidgetsApp(
      builder: (context, widget) => ScalingHelper.builder(context),
      color: Colors.black,
    );

    return widgetsApp;
  }
}

///holds reusable constant 'materialApp' and function 'builder'
///to be used in both cases: with 'DevicePreview' and without it
class ScalingHelper{
  static final materialApp = MaterialApp(
      title: 'SpotOut',
      theme: AppThemes.mainTheme,
      home: const OnBoardingScreen(),
  );

  static Widget builder(BuildContext context)
  {
    return ResponsiveWrapper.builder(
        materialApp,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [ const ResponsiveBreakpoint.autoScale(480, name: MOBILE,), ],
        background: Container(color: AppColors.grayDark,),
    );
  }
}
