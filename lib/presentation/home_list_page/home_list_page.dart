import '../home_list_page/widgets/eventlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:waleed_s_application11/widgets/app_bar/appbar_title.dart';
import 'package:waleed_s_application11/widgets/app_bar/custom_app_bar.dart';

class HomeListPage extends StatelessWidget {
  const HomeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 44.h,
                leading: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(bottom: 6.v),
                    color: appTheme.gray50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Container(
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin:
                                      EdgeInsets.fromLTRB(15.h, 1.v, 1.h, 15.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.redA200,
                                      borderRadius: BorderRadius.circular(4.h),
                                      border: Border.all(
                                          color: appTheme.whiteA700,
                                          width: 1.h,
                                          strokeAlign: strokeAlignOutside))))
                        ]))),
                title: AppbarSubtitle1(
                    text: "msg5".tr, margin: EdgeInsets.only(left: 30.h)),
                actions: [
                  AppbarTitle(
                      text: "lbl4".tr, margin: EdgeInsets.only(top: 5.v))
                ],
                styleType: Style.bgOutline),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 20.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                                child: Text("lbl14".tr,
                                    style: theme.textTheme.labelLarge)),
                            CustomImageView(
                                svgPath: ImageConstant.imgSave,
                                height: 13.adaptSize,
                                width: 13.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 3.h, top: 4.v, bottom: 6.v)),
                            Spacer(),
                            Text("lbl2".tr, style: theme.textTheme.titleMedium)
                          ])),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 19.v, right: 1.h),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 10.v);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return EventlistItemWidget(onTapEventlist: () {
                                  onTapEventlist(context);
                                });
                              })))
                ]))));
  }

  /// Navigates to the detailEventScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the detailEventScreen.
  onTapEventlist(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailEventScreen);
  }
}
