import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/presentation/detail_organizer_about_page/detail_organizer_about_page.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_iconbutton.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:waleed_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:waleed_s_application11/widgets/custom_elevated_button.dart';
import 'package:waleed_s_application11/widgets/custom_outlined_button.dart';

class DetailOrganizerAboutTabContainerScreen extends StatefulWidget {
  const DetailOrganizerAboutTabContainerScreen({Key? key}) : super(key: key);

  @override
  DetailOrganizerAboutTabContainerScreenState createState() =>
      DetailOrganizerAboutTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class DetailOrganizerAboutTabContainerScreenState
    extends State<DetailOrganizerAboutTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 180.v,
                      width: double.maxFinite,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                    height: 151.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgImage,
                                              height: 151.v,
                                              width: 375.h,
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 12.v),
                                                  decoration: AppDecoration
                                                      .gradientWhiteAToWhiteA,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(height: 87.v),
                                                        CustomAppBar(
                                                            height: 40.v,
                                                            leadingWidth: 64.h,
                                                            leading:
                                                                AppbarIconbutton(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    margin: EdgeInsets.only(
                                                                        left: 24
                                                                            .h),
                                                                    onTap: () {
                                                                      onTapArrowrightone(
                                                                          context);
                                                                    }),
                                                            actions: [
                                                              AppbarIconbutton1(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgDotsvertical,
                                                                  margin: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              24.h))
                                                            ])
                                                      ])))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImg95x84,
                                height: 95.v,
                                width: 84.h)
                          ])),
                  Column(children: [
                    SizedBox(height: 7.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl19".tr, style: theme.textTheme.titleLarge),
                          CustomImageView(
                              svgPath: ImageConstant.imgCheckmark,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(left: 4.h, bottom: 8.v))
                        ]),
                    SizedBox(height: 5.v),
                    Text("lbl_3_8k".tr,
                        style: CustomTextStyles.titleSmallBluegray300),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 47.h, top: 31.v, right: 47.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomOutlinedButton(
                                  width: 132.h, text: "lbl23".tr),
                              CustomElevatedButton(
                                  height: 48.v,
                                  width: 132.h,
                                  text: "lbl24".tr,
                                  margin: EdgeInsets.only(left: 16.h),
                                  buttonStyle:
                                      CustomButtonStyles.fillIndigoATL12,
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallWhiteA700Medium)
                            ])),
                    SizedBox(height: 16.v),
                    Container(
                        height: 49.v,
                        width: 327.h,
                        child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: appTheme.indigoA700,
                            labelStyle: TextStyle(
                                fontSize: 14.fSize,
                                fontFamily: 'IBM Plex Sans Arabic',
                                fontWeight: FontWeight.w700),
                            unselectedLabelColor: appTheme.blueGray300,
                            unselectedLabelStyle: TextStyle(
                                fontSize: 14.fSize,
                                fontFamily: 'IBM Plex Sans Arabic',
                                fontWeight: FontWeight.w500),
                            indicatorColor: appTheme.indigoA700,
                            tabs: [
                              Tab(child: Text("lbl25".tr)),
                              Tab(child: Text("lbl26".tr)),
                              Tab(child: Text("lbl27".tr))
                            ])),
                    SizedBox(
                        height: 380.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              DetailOrganizerAboutPage(),
                              DetailOrganizerAboutPage(),
                              DetailOrganizerAboutPage()
                            ]))
                  ])
                ]))));
  }

  /// Navigates to the detailEventScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the detailEventScreen.
  onTapArrowrightone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailEventScreen);
  }
}
