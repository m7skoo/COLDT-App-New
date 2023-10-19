import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_image.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_image_1.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_image_2.dart';
import 'package:waleed_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:waleed_s_application11/widgets/custom_elevated_button.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 56.v,
                leadingWidth: 51.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgShare,
                    margin:
                        EdgeInsets.only(left: 27.h, top: 16.v, bottom: 16.v)),
                title: AppbarImage1(
                    svgPath: ImageConstant.imgFavorite,
                    margin: EdgeInsets.only(left: 10.h)),
                actions: [
                  AppbarImage2(
                      svgPath: ImageConstant.imgArrowright,
                      margin: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 16.v),
                      onTap: () {
                        onTapArrowrightone(context);
                      })
                ],
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 240.v,
                          width: 327.h,
                          margin: EdgeInsets.only(right: 1.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImg240x327,
                                height: 240.v,
                                width: 327.h,
                                radius: BorderRadius.circular(16.h),
                                alignment: Alignment.center),
                            CustomElevatedButton(
                                height: 40.v,
                                width: 115.h,
                                text: "lbl16".tr,
                                margin:
                                    EdgeInsets.only(left: 14.h, bottom: 16.v),
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 4.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h)),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera)),
                                buttonStyle: CustomButtonStyles.outlineGray,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeWhiteA700,
                                alignment: Alignment.bottomLeft)
                          ])),
                      Container(
                          width: 263.h,
                          margin: EdgeInsets.only(
                              left: 56.h, top: 17.v, right: 10.h),
                          child: Text("msg10".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: theme.textTheme.titleLarge!
                                  .copyWith(height: 1.50))),
                      Container(
                          height: 66.v,
                          width: 328.h,
                          margin: EdgeInsets.only(top: 21.v, right: 1.h),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 66.v,
                                    width: 327.h,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: appTheme.indigo50,
                                                width: 1.h))))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration.fillGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text("lbl17".tr,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    Text("lbl18".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumMedium)
                                                  ])),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 14.h,
                                                  vertical: 4.v),
                                              decoration: AppDecoration.fillGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text("lbl_152".tr,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 1.v),
                                                    Text("lbl3".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumMedium)
                                                  ])),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 14.h,
                                                  vertical: 4.v),
                                              decoration: AppDecoration.fillGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text("lbl_22".tr,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 2.v),
                                                    Text("lbl3".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumMedium)
                                                  ])),
                                          GestureDetector(
                                              onTap: () {
                                                onTapColumnheroicons(context);
                                              },
                                              child: Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 4.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgHeroiconssolidbadgecheck,
                                                                  height: 16
                                                                      .adaptSize,
                                                                  width: 16
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              4.v)),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 4
                                                                              .h),
                                                                  child: Text(
                                                                      "lbl19"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleSmall))
                                                            ]),
                                                        SizedBox(height: 4.v),
                                                        Text("msg11".tr,
                                                            style: CustomTextStyles
                                                                .labelLargeBluegray300)
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImg48x48,
                                              height: 48.adaptSize,
                                              width: 48.adaptSize,
                                              radius:
                                                  BorderRadius.circular(24.h))
                                        ])))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(top: 15.v, right: 1.h),
                          child: Text("lbl20".tr,
                              style: theme.textTheme.titleMedium)),
                      Container(
                          width: 324.h,
                          margin: EdgeInsets.only(left: 5.h, top: 6.v),
                          child: Text("msg12".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: CustomTextStyles.titleSmallGray600
                                  .copyWith(height: 1.50))),
                      Padding(
                          padding: EdgeInsets.only(top: 4.v, right: 1.h),
                          child: Text("lbl21".tr,
                              style: CustomTextStyles.titleSmallIndigoA700))
                    ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 42.v),
                decoration: AppDecoration.fillWhiteA,
                child: Container(
                    decoration: AppDecoration.fillWhiteA,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                              height: 56.v,
                              width: 148.h,
                              text: "lbl22".tr,
                              buttonStyle: CustomButtonStyles.fillIndigoATL16,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallWhiteA700),
                          Padding(
                              padding: EdgeInsets.only(top: 6.v, bottom: 3.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("lbl_250".tr,
                                        style: CustomTextStyles
                                            .titleMediumBlack90001),
                                    SizedBox(height: 4.v),
                                    Text("msg_102".tr,
                                        style: CustomTextStyles
                                            .labelLargeBluegray300)
                                  ]))
                        ])))));
  }

  /// Navigates to the homeListContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeListContainerScreen.
  onTapArrowrightone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeListContainerScreen);
  }

  /// Navigates to the detailOrganizerAboutTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the detailOrganizerAboutTabContainerScreen.
  onTapColumnheroicons(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.detailOrganizerAboutTabContainerScreen);
  }
}
