import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/presentation/home_list_page/home_list_page.dart';
import 'package:waleed_s_application11/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeListContainerScreen extends StatelessWidget {
  HomeListContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeListPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeListPage:
        return HomeListPage();
      default:
        return HomeListPage();
    }
  }
}
