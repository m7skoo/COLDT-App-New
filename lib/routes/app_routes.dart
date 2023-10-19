import 'package:flutter/material.dart';
import 'package:waleed_s_application11/presentation/setting_tab_container_screen/setting_tab_container_screen.dart';
import 'package:waleed_s_application11/presentation/home_list_container_screen/home_list_container_screen.dart';
import 'package:waleed_s_application11/presentation/detail_event_screen/detail_event_screen.dart';
import 'package:waleed_s_application11/presentation/detail_organizer_about_tab_container_screen/detail_organizer_about_tab_container_screen.dart';
import 'package:waleed_s_application11/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String settingPage = '/setting_page';

  static const String settingTabContainerScreen =
      '/setting_tab_container_screen';

  static const String homeListPage = '/home_list_page';

  static const String homeListContainerScreen = '/home_list_container_screen';

  static const String detailEventScreen = '/detail_event_screen';

  static const String detailOrganizerAboutPage = '/detail_organizer_about_page';

  static const String detailOrganizerAboutTabContainerScreen =
      '/detail_organizer_about_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    settingTabContainerScreen: (context) => SettingTabContainerScreen(),
    homeListContainerScreen: (context) => HomeListContainerScreen(),
    detailEventScreen: (context) => DetailEventScreen(),
    detailOrganizerAboutTabContainerScreen: (context) =>
        DetailOrganizerAboutTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
