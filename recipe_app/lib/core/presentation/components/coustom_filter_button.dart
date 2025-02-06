import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/custom_container.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class CoustomFilterButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool haveIcon;
  final bool isPressed;
  const CoustomFilterButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.haveIcon = false,
      this.isPressed = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomContainer(
        backgroundColor: isPressed ? ColorStyles.primary100 : ColorStyles.white,
        borderColor: ColorStyles.primary100,
        h: 28,
        w: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: text,
                color: !isPressed ? ColorStyles.primary100 : ColorStyles.white,
                style: TextStyles.smallerTextRegular),
            if (haveIcon)
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.star,
                  size: 15,
                  color:
                      !isPressed ? ColorStyles.primary100 : ColorStyles.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
