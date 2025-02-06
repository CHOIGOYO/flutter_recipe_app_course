import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/custom_container.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

enum ButtonSize { big, medium, small }

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final CustomText text;
  final bool isDisabled;
  final bool haveIcon;
  final ButtonSize size;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.size,
      this.isDisabled = false,
      this.haveIcon = false});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    double buttonHeight = 0;
    switch (widget.size) {
      case ButtonSize.big:
        buttonHeight = 60;
        break;
      case ButtonSize.medium:
        buttonHeight = 50;
        break;
      case ButtonSize.small:
        buttonHeight = 40;
        break;
    }
    return InkWell(
      onTap: widget.isDisabled ? null : widget.onPressed,
      child: CustomContainer(
        backgroundColor:
            widget.isDisabled ? ColorStyles.gray4 : ColorStyles.primary100,
        h: buttonHeight,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: widget.haveIcon ? 40 : 0),
                  child: widget.text),
              widget.haveIcon
                  ? Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.arrow_forward_rounded,
                          color: ColorStyles.white),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
