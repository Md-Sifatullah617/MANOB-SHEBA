import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/profile_controller.dart';
import 'models/healthtracking_item_model.dart';
import 'models/profile_model.dart';
import 'widgets/healthtracking_item_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfileController controller = Get.put(
    ProfileController(ProfileModel().obs),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [
              theme.colorScheme.secondaryContainer,
              theme.colorScheme.onError,
            ],
          ),
        ),
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 44.h),
                  _buildUserProfileSection(),
                  SizedBox(height: 72.h),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20.h),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildAppointmentSection(
                            userThree: ImageConstant.imgClockErrorcontainer,
                            appointment: "lbl_my_saved".tr,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        SizedBox(width: double.maxFinite, child: Divider()),
                        SizedBox(height: 14.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildAppointmentSection(
                            userThree: ImageConstant.imgUserErrorcontainer,
                            appointment: "lbl_appointment".tr,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        SizedBox(width: double.maxFinite, child: Divider()),
                        SizedBox(height: 14.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildAppointmentSection(
                            userThree: ImageConstant.imgUserErrorcontainer42x42,
                            appointment: "lbl_faqs".tr,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        SizedBox(width: double.maxFinite, child: Divider()),
                        SizedBox(height: 14.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildAppointmentSection(
                            userThree: ImageConstant.imgFloatingIcon,
                            appointment: "lbl_logout".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfileSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          SizedBox(
            height: 82.h,
            width: 80.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse27,
                  height: 80.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(40.h),
                ),
                CustomIconButton(
                  height: 24.h,
                  width: 24.h,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonstyleHelper.fillWhiteA,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUserPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.h),
          Text(
            "lbl_amelia_renata".tr,
            style: CustomTextStyles.titleMediumWhiteA700_1,
          ),
          SizedBox(height: 22.h),
          Container(
            height: 78.h,
            margin: EdgeInsets.only(right: 6.h),
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.h,
                      color: appTheme.blue300,
                    ),
                  );
                },
                itemCount:
                    controller
                        .profileModelObj
                        .value
                        .healthtrackingItemList
                        .value
                        .length,
                itemBuilder: (context, index) {
                  HealthtrackingItemModel model =
                      controller
                          .profileModelObj
                          .value
                          .healthtrackingItemList
                          .value[index];
                  return HealthtrackingItemWidget(model);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppointmentSection({
    required String userThree,
    required String appointment,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: userThree, height: 42.h, width: 42.h),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            appointment,
            style: CustomTextStyles.titleMedium16.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 26.h,
          width: 24.h,
        ),
      ],
    );
  }
}
