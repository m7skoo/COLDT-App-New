import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/presentation/setting_page/setting_page.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_subtitle.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:waleed_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:waleed_s_application11/widgets/custom_bottom_bar.dart';
import 'package:waleed_s_application11/widgets/custom_search_view.dart';

class SettingTabContainerScreen extends StatefulWidget {
  const SettingTabContainerScreen({Key? key}) : super(key: key);

  @override
  SettingTabContainerScreenState createState() =>
      SettingTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SettingTabContainerScreenState extends State<SettingTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 390.h,
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          height: 73.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 30.v,
                                width: 26.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 17.h),
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgBell,
                                height: 19.adaptSize,
                                width: 19.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 6.v, right: 3.h)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("lbl_profile".tr,
                                    style: CustomTextStyles
                                        .titleSmallPoppinsWhiteA700)),
                            CustomAppBar(
                                leadingWidth: 68.h,
                                leading: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.only(
                                        left: 24.h, top: 11.v, bottom: 17.v),
                                    color: appTheme.gray50,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder10),
                                    child: Container(
                                        height: 44.adaptSize,
                                        width: 44.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: 8.adaptSize,
                                                      width: 8.adaptSize,
                                                      margin: EdgeInsets.fromLTRB(
                                                          15.h, 1.v, 1.h, 15.v),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              appTheme.redA200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .whiteA700,
                                                              width: 1.h,
                                                              strokeAlign:
                                                                  strokeAlignOutside))))
                                            ]))),
                                title: Padding(
                                    padding: EdgeInsets.only(left: 179.h),
                                    child: Column(children: [
                                      AppbarSubtitle1(
                                          text: "msg5".tr,
                                          margin: EdgeInsets.only(left: 30.h)),
                                      SizedBox(height: 5.v),
                                      AppbarSubtitle(text: "lbl4".tr)
                                    ])),
                                styleType: Style.bgOutline)
                          ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomSearchView(
                                margin: EdgeInsets.only(
                                    left: 24.h, top: 7.v, right: 39.h),
                                controller: searchController,
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        16.h, 18.v, 30.h, 18.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 56.v),
                                suffix: Padding(
                                    padding: EdgeInsets.only(right: 15.h),
                                    child: IconButton(
                                        onPressed: () {
                                          searchController.clear();
                                        },
                                        icon: Icon(Icons.clear,
                                            color: Colors.grey.shade600)))),
                            Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(top: 17.v, right: 39.h),
                                child: Row(children: [
                                  Container(
                                      height: 40.v,
                                      width: 64.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray50,
                                          borderRadius:
                                              BorderRadius.circular(12.h))),
                                  Container(
                                      height: 40.v,
                                      width: 299.h,
                                      margin: EdgeInsets.only(left: 12.h),
                                      child: TabBar(
                                          controller: tabviewController,
                                          labelPadding: EdgeInsets.zero,
                                          labelColor: appTheme.whiteA700,
                                          unselectedLabelColor:
                                              appTheme.gray900,
                                          tabs: [
                                            Tab(child: Text("lbl5".tr)),
                                            Tab(child: Text("lbl6".tr)),
                                            Tab(child: Text("lbl7".tr)),
                                            Tab(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                  Text("lbl8".tr),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMenu2,
                                                      height: 13.adaptSize,
                                                      width: 13.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 3.h,
                                                          top: 2.v,
                                                          bottom: 2.v))
                                                ]))
                                          ]))
                                ])),
                            SizedBox(
                                height: 535.v,
                                child: TabBarView(
                                    controller: tabviewController,
                                    children: [
                                      SettingPage(),
                                      SettingPage(),
                                      SettingPage(),
                                      SettingPage()
                                    ]))
                          ]))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
