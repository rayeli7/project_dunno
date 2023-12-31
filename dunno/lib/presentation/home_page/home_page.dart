import 'package:dunno/presentation/cards_screen/cards_screen.dart';

import '../home_page/widgets/options_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/options_item_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/widgets/app_bar/appbar_image.dart';
import 'package:dunno/widgets/app_bar/appbar_title.dart';
import 'package:dunno/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) =>
            HomeBloc(HomeState(homeModelObj: const HomeModel()))
              ..add(HomeInitialEvent()),
        child: const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarImage(
                    imagePath: ImageConstant.imgAppLogo,
                    margin: getMargin(left: 24, top: 6, bottom: 6)),
                title: AppbarTitle(
                    text: "lbl_welcome".tr, margin: getMargin(left: 23))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 34, right: 24, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 3, top: 3, right: 3),
                          child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                              selector: (state) => state.homeModelObj,
                              builder: (context, homeModelObj) {
                                return const CardsScreen();
                              })),
                      Container(
                          width: getHorizontalSize(360),
                          margin: getMargin(right: 6),
                          padding: getPadding(
                              left: 30, top: 17, right: 30, bottom: 17),
                          decoration: AppDecoration.fillPrimary,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_total_balance".tr,
                                    style: CustomTextStyles.bodyLargeGray10001),
                                Text("GHC 1,300",
                                    style:
                                        CustomTextStyles.displayMediumGray10001)
                              ])),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 3, top: 50, right: 3),
                              child: BlocSelector<HomeBloc, HomeState,
                                      HomeModel?>(
                                  selector: (state) => state.homeModelObj,
                                  builder: (context, homeModelObj) {
                                    return GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(201),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                    getHorizontalSize(24),
                                                crossAxisSpacing:
                                                    getHorizontalSize(24)),
                                        physics: const BouncingScrollPhysics(),
                                        itemCount: homeModelObj
                                                ?.optionsItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          OptionsItemModel model = homeModelObj
                                                  ?.optionsItemList[index] ??
                                              OptionsItemModel();
                                          return OptionsItemWidget(model,
                                              onTapOne: () {
                                            onTapOne(context);
                                          });
                                        });
                                  })))
                    ]))));
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the mobilePrepaidOneScreen.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mobilePrepaidOneScreen,
    );
  }
}
