import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';
import 'package:waleed_s_application11/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DetailOrganizerAboutPage extends StatefulWidget {
  const DetailOrganizerAboutPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailOrganizerAboutPageState createState() =>
      DetailOrganizerAboutPageState();
}

class DetailOrganizerAboutPageState extends State<DetailOrganizerAboutPage>
    with AutomaticKeepAliveClientMixin<DetailOrganizerAboutPage> {
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 25.v,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 327.h,
                        child: Text(
                          "msg13".tr,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.titleSmallMedium.copyWith(
                            height: 2.00,
                          ),
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl21".tr,
                          style: CustomTextStyles.titleSmallIndigoA700,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgAkariconstwitterfill,
                            ),
                          ),
                          CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            padding: EdgeInsets.all(14.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgBxlinstagramalt,
                            ),
                          ),
                          CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            padding: EdgeInsets.all(15.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
