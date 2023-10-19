import 'package:flutter/material.dart';
import 'package:waleed_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class EventlistItemWidget extends StatelessWidget {
  EventlistItemWidget({
    Key? key,
    this.onTapEventlist,
  }) : super(
          key: key,
        );

  VoidCallback? onTapEventlist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEventlist?.call();
      },
      child: SizedBox(
        height: 122.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 106.v,
                width: 313.h,
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
                  right: 1.h,
                  bottom: 2.v,
                ),
                padding: EdgeInsets.symmetric(vertical: 12.v),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "msg6".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.50,
                            ),
                          ),
                          SizedBox(height: 14.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.fillIndigoA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Text(
                                  "lbl_150".tr,
                                  style: CustomTextStyles.labelLargeBlack90001,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 17.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl_4".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgClock,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  top: 9.v,
                                  bottom: 9.v,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 96.v,
                      width: 87.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImg96x87,
                            height: 96.v,
                            width: 87.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 8.v,
                                right: 6.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 2.v,
                              ),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_24".tr,
                                    style: CustomTextStyles.labelLargeGray900,
                                  ),
                                  Text(
                                    "lbl3".tr,
                                    style: theme.textTheme.labelSmall,
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
    );
  }
}
