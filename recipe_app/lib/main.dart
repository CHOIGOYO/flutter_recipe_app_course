import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/custom_button.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'recipe_app',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: CustomText(
              text: 'components test',
              color: ColorStyles.black,
              style: TextStyles.largeTextBold)),
      body: ListView(
        children: <Widget>[
          CustomButton(
            onPressed: () {
              debugPrint('Big Button pressed');
            },
            haveIcon: true,
            text: CustomText(
                text: 'Button',
                color: ColorStyles.white,
                style: TextStyles.normalTextBold),
            size: ButtonSize.big,
          ),
          CustomButton(
            onPressed: () {},
            haveIcon: true,
            isDisabled: true,
            text: CustomText(
                text: 'Button',
                color: ColorStyles.white,
                style: TextStyles.normalTextBold),
            size: ButtonSize.big,
          ),
          CustomButton(
            onPressed: () {},
            haveIcon: false,
            isDisabled: false,
            text: CustomText(
                text: 'Button',
                color: ColorStyles.white,
                style: TextStyles.normalTextBold),
            size: ButtonSize.medium,
          ),
        ],
      ),
    );
  }
}
