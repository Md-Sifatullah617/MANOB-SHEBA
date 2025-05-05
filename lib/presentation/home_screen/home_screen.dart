import 'package:flutter/material.dart';

import '../core/app_export.dart';
import '../message_history_page/message_history_page.dart';
import '../profile_page/profile_page.dart';
import '../schedule_page/schedule_page.dart';
import '../widgets/custom_bottom_bar.dart';
import 'controller/home_controller.dart';
import 'home_initial_page.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppRoutes.homeInitialPage,
        onGenerateRoute:
            (routeSetting) => GetPageRoute(
              page: () => getCurrentPage(routeSetting.name!),
              transition: Transition.noTransition,
            ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomNavigation(),
      ),
    );
  }

  /// Widget
  Widget _buildBottomNavigation() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Message:
        return AppRoutes.messageHistoryPage;
      case BottomBarEnum.Calendargray500:
        return AppRoutes.schedulePage;
      case BottomBarEnum.Lockgray500:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeInitialPage:
        return HomeInitialPage();
      case AppRoutes.messageHistoryPage:
        return MessageHistoryPage();
      case AppRoutes.schedulePage:
        return SchedulePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
