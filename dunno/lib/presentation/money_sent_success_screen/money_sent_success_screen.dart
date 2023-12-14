import 'bloc/money_sent_success_bloc.dart';
import 'models/money_sent_success_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:flutter/material.dart';

class MoneySentSuccessScreen extends StatelessWidget {
  const MoneySentSuccessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MoneySentSuccessBloc>(
      create: (context) => MoneySentSuccessBloc(MoneySentSuccessState(
        moneySentSuccessModelObj: MoneySentSuccessModel(),
      ))
        ..add(MoneySentSuccessInitialEvent()),
      child: MoneySentSuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MoneySentSuccessBloc, MoneySentSuccessState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: getSize(80),
                    width: getSize(80),
                    padding: getPadding(
                      left: 29,
                      top: 31,
                      right: 29,
                      bottom: 31,
                    ),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder42,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkGray700,
                      height: getVerticalSize(16),
                      width: getHorizontalSize(22),
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(181),
                    margin: getMargin(
                      top: 18,
                    ),
                    child: Text(
                      "msg_money_sent_successfully".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
