import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/location_controller.dart';

class LocationScreen extends GetWidget<LocationController> {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: _buildTopBar(),
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        padding: EdgeInsets.only(top: 40.h),
        decoration: BoxDecoration(
          color: appTheme.whiteA700,
          image: DecorationImage(
            image: AssetImage(ImageConstant.imgLocation768x374),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 40.h),
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 26.h),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              _buildMapSection(),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.h),
                      child: CustomSearchView(
                        controller: controller.searchController,
                        hintText: "msg_search_location".tr,
                        contentPadding: EdgeInsets.fromLTRB(
                          16.h,
                          10.h,
                          12.h,
                          10.h,
                        ),
                      ),
                    ),
                    Spacer(),
                    _buildConfirmAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildTopBar() {
    return CustomAppBar(
      height: 40.h,
      leadingWidth: 64.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        height: 40.h,
        width: 40.h,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapArrowLeftOne();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(text: "lbl_ambulance".tr),
      styleType: Style.bgFill,
    );
  }

  Widget _buildMapSection() {
    return SizedBox(
      height: 658.h,
      width: 534.h,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.43296265331129, -122.08832357078792),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          this.controller.googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  Widget _buildConfirmAddressSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "msg_confirm_your_address".tr,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinRed700,
                  height: 26.h,
                  width: 26.h,
                  margin: EdgeInsets.only(top: 4.h),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 190.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_1111_abcd_rd_102".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBluegray700.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          CustomElevatedButton(
            height: 50.h,
            text: "msg_confirm_location".tr,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
          ),
        ],
      ),
    );
  }

  void onTapArrowLeftOne() {
    Get.back();
  }
}
