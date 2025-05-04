import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Home, Message, Calendargray500, Lockgray500 }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, this.onChanged}) : super(key: key);

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMessage,
      activeIcon: ImageConstant.imgMessage,
      type: BottomBarEnum.Message,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCalendarGray500,
      activeIcon: ImageConstant.imgCalendarGray500,
      type: BottomBarEnum.Calendargray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockGray500,
      activeIcon: ImageConstant.imgLockGray500,
      type: BottomBarEnum.Lockgray500,
    ),
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 32.h,
                width: 32.h,
                color: Color(0XFF90979E),
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 32.h,
                width: 32.h,
                color: Color(0XFF227DDE),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please replace the respective Widget here',
                style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

