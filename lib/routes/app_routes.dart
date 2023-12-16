import 'package:flutter/material.dart';
import 'package:fatima995246_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:fatima995246_s_application1/presentation/get_started_screen/get_started_screen.dart';
import 'package:fatima995246_s_application1/presentation/login_screen/login_screen.dart';
import 'package:fatima995246_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:fatima995246_s_application1/presentation/otp_screen/otp_screen.dart';
import 'package:fatima995246_s_application1/presentation/new_password_screen/new_password_screen.dart';
import 'package:fatima995246_s_application1/presentation/registers_screen/registers_screen.dart';
import 'package:fatima995246_s_application1/presentation/home_screen/home_screen.dart';

import '../presentation/setting_edit_profile_page/setting_edit_profile_page.dart';
import '../presentation/settings/settings.dart';
import '../presentation/to_do_tab/to_do_tab.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpScreen = '/otp_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String registersScreen = '/registers_screen';

  static const String homeScreen = '/home_screen';

  static const String settingEditProfilePage = '/setting_edit_profile_page';

  static const String toDoTab = '/to_do_tab';

  static const String settings = '/settings';



  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    getStartedScreen: (context) => GetStartedScreen(),
    loginScreen: (context) => LoginScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    otpScreen: (context) => OtpScreen(),
    newPasswordScreen: (context) => NewPasswordScreen(),
    registersScreen: (context) => RegistersScreen(),
    homeScreen: (context) => HomeScreen(),
    toDoTab: (context) => ToDoTab(),
    settings: (context) => SettingsTab(),
    settingEditProfilePage: (context) => SettingEditProfilePage()
  };
}
