import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/coustom_filter_button.dart';
import 'package:recipe_app/core/presentation/components/custom_button.dart';
import 'package:recipe_app/core/presentation/components/custom_inputField.dart';
import 'package:recipe_app/core/presentation/components/custom_tab.dart';
import 'package:recipe_app/core/presentation/components/thumps_button.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
  // 커밋 테스트용 주석
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
          CustomInputfield(
            labelText: 'username',
            hintText: 'enter your username',
            isDisabled: false,
          ),
          CustomInputfield(
            labelText: 'password',
            hintText: 'enter your password',
            isPassword: true,
            isDisabled: false,
          ),
          CustomInputfield(
            labelText: 'search',
            hintText: '',
            haveSearchIcon: true,
          ),
          CustomInputfield(
            labelText: 'search',
            hintText: 'disabled',
            haveSearchIcon: true,
            isDisabled: true,
          ),
          Row(
            children: [
              CoustomFilterButton(
                text: '5',
                onTap: () {
                  debugPrint('5 Button pressed');
                },
                haveIcon: true,
              ),
              CoustomFilterButton(
                text: '5',
                onTap: () {
                  debugPrint('5 Button pressed');
                },
                isPressed: true,
                haveIcon: true,
              ),
              CoustomFilterButton(
                text: 'text',
                onTap: () {
                  debugPrint('text Button pressed');
                },
              ),
              CoustomFilterButton(
                text: 'text',
                isPressed: true,
                onTap: () {
                  debugPrint('text Button pressed');
                },
              ),
              ThumpsButton(
                isUp: true,
                isPressed: false,
                onTap: () {
                  debugPrint('👍 Button pressed');
                },
                text: '3',
              ),
              ThumpsButton(
                isUp: false,
                isPressed: true,
                onTap: () {
                  debugPrint('👎 Button pressed');
                },
                text: '3',
              ),
            ],
          ),
          CustomTab(
            labels: ['tab1', 'tab2'],
            selectedIndex: 0,
          ),
        ],
      ),
    );
  }
}
