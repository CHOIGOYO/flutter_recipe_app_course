import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class CustomInputfield extends StatefulWidget {
  final bool haveLabel;
  final bool isDisabled;
  final bool isPassword;
  final bool haveSearchIcon;
  final String labelText;
  final String hintText;
  const CustomInputfield(
      {super.key,
      this.haveLabel = false,
      this.isDisabled = false,
      this.isPassword = false,
      this.haveSearchIcon = false,
      required this.labelText,
      required this.hintText});

  @override
  State<CustomInputfield> createState() => _CustomInputfieldState();
}

class _CustomInputfieldState extends State<CustomInputfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!widget.haveLabel)
            CustomText(
                text: widget.labelText,
                color: ColorStyles.black,
                style: TextStyles.normalTextRegular),
          if (!widget.haveLabel) const SizedBox(height: 5),
          TextField(
            cursorColor: ColorStyles.black,
            style:
                TextStyles.smallTextRegular.copyWith(color: ColorStyles.black),
            enabled: !widget.isDisabled,
            obscureText: widget.isPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  widget.isDisabled ? ColorStyles.gray4 : Colors.transparent,
              prefixIcon:
                  widget.haveSearchIcon ? const Icon(Icons.search) : null,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorStyles.primary100, width: 1.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorStyles.gray4, width: 1.5),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorStyles.gray4, width: 1.5),
              ),
              hintText: widget.hintText,
              hintStyle: TextStyles.smallTextRegular.copyWith(
                  color: widget.isDisabled
                      ? ColorStyles.gray2
                      : ColorStyles.gray4),
            ),
          ),
        ],
      ),
    );
  }
}
