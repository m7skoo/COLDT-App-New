import '../setting_page/widgets/setting_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage>
    with AutomaticKeepAliveClientMixin<SettingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 27.h,
                        right: 36.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.titleSmallGray500,
                            ),
                          ),
                          Text(
                            "lbl2".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 290.v,
                          width: 250.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 290.v,
                                  width: 250.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 166.h),
                                          child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (
                                              context,
                                              index,
                                            ) {
                                              return SizedBox(
                                                height: 1.v,
                                              );
                                            },
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return SettingItemWidget();
                                            },
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImg290x250,
                                        height: 290.v,
                                        width: 250.h,
                                        radius: BorderRadius.circular(
                                          20.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImg,
                                height: 290.v,
                                width: 250.h,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 290.v,
                          width: 250.h,
                          margin: EdgeInsets.only(left: 20.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImg,
                                height: 290.v,
                                width: 250.h,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 290.v,
                                  width: 250.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImg,
                                        height: 290.v,
                                        width: 250.h,
                                        radius: BorderRadius.circular(
                                          20.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 15.h,
                                                  vertical: 6.v,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text(
                                                      "lbl_26".tr,
                                                      style: theme
                                                          .textTheme.titleSmall,
                                                    ),
                                                    Text(
                                                      "lbl3".tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 135.v),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 9.v,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineGray
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 3.v),
                                                    Text(
                                                      "msg".tr,
                                                      style: theme
                                                          .textTheme.titleSmall,
                                                    ),
                                                    SizedBox(height: 6.v),
                                                    SizedBox(
                                                      width: 200.h,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CustomElevatedButton(
                                                            width: 104.h,
                                                            text: "lbl_150".tr,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 6.v,
                                                              bottom: 7.v,
                                                            ),
                                                            child: Text(
                                                              "lbl_4".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge,
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgClock,
                                                            height:
                                                                14.adaptSize,
                                                            width: 14.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                              top: 8.v,
                                                              bottom: 9.v,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 25.v,
                          right: 40.h,
                        ),
                        child: Text(
                          "msg3".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      height: 122.v,
                      width: 359.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 106.v,
                              width: 343.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray900.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                right: 3.h,
                                bottom: 2.v,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 12.v),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 3.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          width: 169.h,
                                          child: Text(
                                            "msg4".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: theme.textTheme.titleSmall!
                                                .copyWith(
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 17.v),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomElevatedButton(
                                              width: 99.h,
                                              text: "lbl_150".tr,
                                              buttonStyle:
                                                  CustomButtonStyles.fillRed,
                                              buttonTextStyle: CustomTextStyles
                                                  .labelLargeDeeporange400,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 17.h,
                                                top: 7.v,
                                                bottom: 7.v,
                                              ),
                                              child: Text(
                                                "lbl_4".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgClock,
                                              height: 14.adaptSize,
                                              width: 14.adaptSize,
                                              margin: EdgeInsets.only(
                                                left: 4.h,
                                                top: 9.v,
                                                bottom: 7.v,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 96.adaptSize,
                                    width: 96.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImg96x96,
                                          height: 96.adaptSize,
                                          width: 96.adaptSize,
                                          radius: BorderRadius.circular(
                                            12.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 8.h,
                                              top: 8.v,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 9.h,
                                              vertical: 2.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "lbl_24".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeGray900,
                                                ),
                                                Text(
                                                  "lbl3".tr,
                                                  style: theme
                                                      .textTheme.labelSmall,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
