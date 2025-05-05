import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../controller/articles_controller.dart';
import '../models/chipviewcovidni_item_model.dart';
import '../models/listcovidninete_item_model.dart';
import '../models/listthetwentyfi_item_model.dart';
import '../widgets/chipviewcovidni_item_widget.dart';
import '../widgets/listcovidninete_item_widget.dart';
import '../widgets/listthetwentyfi_item_widget.dart';
// ignore_for_file: must_be_immutable
class ArticlesScreen extends GetWidget<ArticlesController> {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBoxBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Column(
                      children: [
                        _buildSearchSection(),
                        SizedBox(height: 28.h),
                        _buildPopularArticles(),
                        SizedBox(height: 28.h),
                        _buildcovidArticles(),
                        SizedBox(height: 28.h),
                        _buildRelatedArticles(),
                        SizedBox(height: 8.h,)
                      ],
                    )))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.h, bottom: 16.h)),
        titleCentered: true,
        title: AppbarSubtitleOne(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary,
              margin: EdgeInsets.only(top: 8.h, right: 23.h, bottom: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildSearchSection() {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 24.h, right: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_search_articles".tr,
                  contentPadding: EdgeInsets.fromLTRB(16.h, 10.h, 12.h, 10.h)),
            ),
          ],
        ));
  }

  /// Section Widget
  Widget _buildPopularArticles() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "msg_popular_articles".tr,
                style: CustomTextStyles.titleMedium16,
              ),
            ),
            SizedBox(height: 18.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 4.h),
              child: Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 5.h,
                    children: List<Widget>.generate(
                      controller
                          .articlesModelObj
                          .value
                          .chipviewcovidniItemList
                          .value
                          .length,
                      (index) {
                        ChipviewcovidniItemModel model = controller
                            .articlesModelObj
                            .value
                            .chipviewcovidniItemList
                            .value[index];
                        return ChipviewcovidniItemWidget(model);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  /// Section Widget
  Widget _buildRelatedArticles() {
    return SizedBoxBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildRelatedArticlesHeader(
              related: "msg_trending_articles".tr,
              seeAllOne: "lbl_see_all".tr,
            ),
          ),
          SizedBox(height: 18.h),
          Container(
            margin: EdgeInsets.only(left: 24.h),
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 14.h,
                  children: List.generate(
                    controller
                        .articlesModelObj
                        .value
                        .listcovidnineteItemList
                        .value
                        .length,
                    (index) {
                      ListcovidnineteItemModel model = controller
                          .articlesModelObj
                          .value
                          .listcovidnineteItemList
                          .value[index];
                      return ListcovidnineteItemWidget(model);
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount: controller
                    .articlesModelObj
                    .value
                    .listthetwentyfiItemList
                    .value
                    .length,
                itemBuilder: (context, index) {
                  ListthetwentyfiItemModel model = controller
                      .articlesModelObj
                      .value
                      .listthetwentyfiItemList
                      .value[index];
                  return ListthetwentyfiItemWidget(model);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRelatedArticlesHeader({
    required String related,
    required String seeAllOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            related,
            style: CustomTextStyles.titleMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Text(
                seeAllOne,
                style: CustomTextStyles.labelLargePrimary.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

    /// Section Widget
  Widget _buildcovidArticles() {
    return SizedBox();
  }
}