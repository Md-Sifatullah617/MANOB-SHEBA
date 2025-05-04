import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../sign_up_success_dialog/controller/sign_up_success_controller.dart';
import '../sign_up_success_dialog/sign_up_success_dialog.dart';
import '../../controller/app_navigation_controller.dart'; // ignore_for_file: must_be_immutable

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Text(
                      "App Navigation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Check your app's UI from the below demo screens of your app.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF888888),
                        fontSize: 16.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: Color(0xFF000000),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Column(
                    children: [
                      _buildScreenTitle(
                        screenTitle: "Splash Screen",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.splashScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Onboarding One",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.onboardingOneScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Onboarding Two",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Onboarding Three",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Onboarding Four",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.onboardingFourScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Login",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.loginScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Sign Up",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.signUpScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Sign Up - Success - Dialog",
                        onTapScreenTitle:
                            () => onTapDialogTitle(
                          context,
                          SignUpSuccessDialog(
                            Get.put(SignUpSuccessController()),
                          ),
                        ),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Reset Password - Email",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.resetPasswordEmailScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Reset Password - Verify Code",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.resetPasswordVerifyCodeScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Create New Password",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.createNewPasswordScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Home",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.homeScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Top Doctor",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.topDoctorScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Find Doctors",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.findDoctorsScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Doctor Detail",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.doctorDetailScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Booking Doctor",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.bookingDoctorScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Audio Call",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.audioCallScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Video Call",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.videoCallScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Articles",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.articlesScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Pharmacy",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.pharmacyScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Drugs Detail",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.drugsDetailScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "My Cart",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.myCartScreen),
                      ),
                      _buildScreenTitle(
                        screenTitle: "Location",
                        onTapScreenTitle:
                            () => onTapScreenTitle(AppRoutes.locationScreen),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(BuildContext context, Widget className) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(height: 1.h, thickness: 1.h, color: Color(0xFF000000)),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}

