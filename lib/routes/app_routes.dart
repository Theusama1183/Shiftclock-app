import 'package:flutter/material.dart';
import 'package:shiftclock/presentation/colored_splash_screen/colored_splash_screen.dart';
import 'package:shiftclock/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:shiftclock/presentation/onboarding1_screen/onboarding1_screen.dart';
import 'package:shiftclock/presentation/onboarding2_screen/onboarding2_screen.dart';
import 'package:shiftclock/presentation/four_screen/four_screen.dart';
import 'package:shiftclock/presentation/five_screen/five_screen.dart';
import 'package:shiftclock/presentation/six_screen/six_screen.dart';
import 'package:shiftclock/presentation/seven_screen/seven_screen.dart';
import 'package:shiftclock/presentation/eight_screen/eight_screen.dart';
import 'package:shiftclock/presentation/nine_screen/nine_screen.dart';
import 'package:shiftclock/presentation/ten_screen/ten_screen.dart';
import 'package:shiftclock/presentation/eleven_screen/eleven_screen.dart';
import 'package:shiftclock/presentation/twelve_screen/twelve_screen.dart';
import 'package:shiftclock/presentation/thirteen_screen/thirteen_screen.dart';
import 'package:shiftclock/presentation/seventeen_screen/seventeen_screen.dart';
import 'package:shiftclock/presentation/eighteen_screen/eighteen_screen.dart';
import 'package:shiftclock/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String coloredSplashScreen = '/colored_splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboarding1Screen = '/onboarding1_screen';

  static const String onboarding2Screen = '/onboarding2_screen';

  static const String fourScreen = '/four_screen';

  static const String fiveScreen = '/five_screen';

  static const String sixScreen = '/six_screen';

  static const String sevenScreen = '/seven_screen';

  static const String eightScreen = '/eight_screen';

  static const String nineScreen = '/nine_screen';

  static const String tenScreen = '/ten_screen';

  static const String elevenScreen = '/eleven_screen';

  static const String twelveScreen = '/twelve_screen';

  static const String thirteenScreen = '/thirteen_screen';

  static const String seventeenScreen = '/seventeen_screen';

  static const String eighteenScreen = '/eighteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    coloredSplashScreen: (context) => ColoredSplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    onboarding1Screen: (context) => Onboarding1Screen(),
    onboarding2Screen: (context) => Onboarding2Screen(),
    fourScreen: (context) => FourScreen(),
    fiveScreen: (context) => FiveScreen(),
    sixScreen: (context) => SixScreen(),
    sevenScreen: (context) => SevenScreen(),
    eightScreen: (context) => EightScreen(),
    nineScreen: (context) => NineScreen(),
    tenScreen: (context) => TenScreen(),
    elevenScreen: (context) => ElevenScreen(),
    twelveScreen: (context) => TwelveScreen(),
    thirteenScreen: (context) => ThirteenScreen(),
    seventeenScreen: (context) => SeventeenScreen(),
    eighteenScreen: (context) => EighteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
