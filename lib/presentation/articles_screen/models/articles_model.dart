import '../../core/app_export.dart';
import 'chipviewcovidni_item_model.dart';
import 'listcovidninete_item_model.dart';
import 'listthetwentyfi_item_model.dart';

/// This class defines the variables used in the [articles_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArticlesModel {
  Rx<List<ChipviewcovidniItemModel>> chipviewcovidniItemList = Rx([
    ChipviewcovidniItemModel(covidnineteen: "Covid-19".obs),
    ChipviewcovidniItemModel(covidnineteen: "Diet".obs),
    ChipviewcovidniItemModel(covidnineteen: "Fitness".obs)
  ]);

  Rx<List<ListcovidnineteItemModel>> listcovidnineteItemlist = Rx([
    ListcovidnineteItemModel(
        covidnineteen: ImageConstant.imgRectangle460.obs,
        covidnineteen1: "Covid-19".obs,
        comparingthe:
            "| Comparing the AstraZeneca and Sinovac COVID-19 Vaccines".obs,
        jun122021: "Jun 12, 2021".obs,
        time: "6 min read".obs),
    ListcovidnineteItemModel(
        covidnineteen: ImageConstant.imgRectangle458.obs,
        covidnineteen1: "Covid-19".obs,
        comparingthe:
            "| Comparing the AstraZeneca and Sinovac COVID-19 Vaccines".obs,
        jun122021: "Jun 12, 2021".obs,
        time: "6 min read".obs),
    ListcovidnineteItemModel(
        covidnineteen: ImageConstant.imgRectangle46086x112.obs,
        comparingthe:
            "| Comparing the AstraZeneca and Sinovac COVID-19 Vaccines".obs,
        jun122021: "Jun 12, 2021".obs,
        time: "6 min read".obs)
  ]);

  Rx<List<ListthetwentyfiItemModel>> listthetwentyfiItemlist = Rx([
    ListthetwentyfiItemModel(
        image: ImageConstant.imgUnsplash86rvjm9zowy.obs,
        thetwentyfive:
            "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist"
                .obs,
        jun102021: "Jun 10, 2021 ".obs,
        time: "5min read".obs),
    ListthetwentyfiItemModel(
        image: ImageConstant.imgUnsplashFepfs43yipe.obs,
        thetwentyfive: "Traditional Herbal Medicine Treatments for COVID-19".obs,
        jun102021: "Jun 9, 2021 ".obs,
        time: "8 min read".obs),
    ListthetwentyfiItemModel(
        image: ImageConstant.imgUnsplash5tymgag0wro.obs,
        thetwentyfive:
            "Beauty Tips For Face: 10 Dos and Don'ts for Naturally Beautiful Skin"
                .obs,
        jun102021: "Jun 8, 2021 ".obs,
        time: "8 min read".obs)
  ]);
}

