import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/custom_container.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class ThumpsButton extends StatelessWidget {
  final bool isUp;
  final String text;
  final bool isPressed;
  final VoidCallback onTap;
  const ThumpsButton(
      {super.key,
      required this.isUp,
      required this.text,
      required this.isPressed,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomContainer(
        h: 20,
        w: 50,
        backgroundColor:
            isPressed ? ColorStyles.primary100 : ColorStyles.success10,
        borderColor: isPressed ? ColorStyles.primary100 : ColorStyles.success10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: '${isUp ? '👍' : '👎'} $text',
                color: isPressed ? ColorStyles.white : ColorStyles.gray1,
                style: TextStyles.smallerTextRegular)
          ],
        ),
      ),
    );
  }
}
