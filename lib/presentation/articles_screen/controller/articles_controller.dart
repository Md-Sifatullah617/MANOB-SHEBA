import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../models/articles_model.dart';

/// A controller class for the ArticlesScreen.
///
/// This class manages the state of the ArticlesScreen, including the
/// current articlesModelObj
class ArticlesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ArticlesModel> articlesModelObj = ArticlesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

