import '../models/options_item_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';


class OptionsItemWidget extends StatelessWidget {
  const OptionsItemWidget(
    this.optionsItemModelObj, {
    super.key,
    this.onTapOne,
  });

  final OptionsItemModel optionsItemModelObj;

  final VoidCallback? onTapOne;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOne?.call();
      },
      child: Container(
        padding: getPadding(
          left: 20,
          top: 26,
          right: 20,
          bottom: 26,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: getSize(35),
              width: getSize(35),
              padding: getPadding(
                all: 8,
              ),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlay,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Text(
                optionsItemModelObj.sendmoneyTxt,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.30,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
                bottom: 3,
              ),
              child: Text(
                optionsItemModelObj.card3303Txt,
                style: CustomTextStyles.bodyMediumBluegray70001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
