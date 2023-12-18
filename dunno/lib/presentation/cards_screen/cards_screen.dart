// ignore_for_file: unused_import

import 'bloc/cards_bloc.dart';
import 'models/cards_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/widgets/app_bar/appbar_iconbutton.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.centerRight,
        child: AppbarIconbutton(
            svgPath: ImageConstant.imgPlus,
            margin: getMargin(left: 24, top: 1, right: 24, bottom: 1),
            onTap: () {
              onTapPlusone(context);
            }),
      ),
      Container(
          margin: getMargin(top: 36, bottom: 5),
          padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
          decoration: AppDecoration.gradientTealToTeal,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: getPadding(left: 2),
                    child: Text("msg_jonathan_anderson".tr,
                        style: CustomTextStyles.labelLargeOnPrimary)),
                Padding(
                    padding: getPadding(left: 2, top: 39),
                    child: Text("msg_1222_3443_0881_1222".tr,
                        style: CustomTextStyles.titleMediumOnPrimarySemiBold)),
                Padding(
                    padding: getPadding(top: 24),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_balance".tr,
                                    style: theme.textTheme.labelSmall),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_31_250".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnPrimarySemiBold))
                              ]),
                          CustomImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: getSize(20),
                              width: getSize(20),
                              margin: getMargin(top: 10))
                        ]))
              ])),
    ]);
  }
}

/// Navigates to the addCardOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the addCardOneScreen.
onTapPlusone(BuildContext context) {
  NavigatorService.pushNamed(
    AppRoutes.addCardOneScreen,
  );
}

/// Navigates to the cardDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the cardDetailsScreen.
onTapWalletmastercar(BuildContext context) {
  NavigatorService.pushNamed(
    AppRoutes.cardDetailsScreen,
  );
}
