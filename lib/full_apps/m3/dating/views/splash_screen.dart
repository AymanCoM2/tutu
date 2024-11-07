import './ing/controllers/splash_controller.dart';
import './p_theme.dart';
import './nstant.dart';
import './my_button.dart';
import './my_spacing.dart';
import './my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late ThemeData theme;
  late SplashController controller;

  @override
  void initState() {
    super.initState();

    theme = AppTheme.datingTheme;
    // FxControllerStore.resetStore();
    controller = SplashController();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: controller,
        tag: 'splash_controller',
        builder: (controller) {
          return Theme(
            data: theme.copyWith(
                colorScheme: theme.colorScheme
                    .copyWith(secondary: theme.colorScheme.primaryContainer)),
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/apps/dating/splash.png'),
                  ),
                  MyText.displaySmall(
                    'Find your \nBest matches',
                    fontWeight: 600,
                    textAlign: TextAlign.center,
                    fontSize: 28,
                    letterSpacing: 0,
                  ),
                  MySpacing.height(32),
                  Container(
                    margin: MySpacing.x(40),
                    child: MyButton.block(
                      onPressed: () {
                        controller.goToHomeScreen();
                      },
                      padding: MySpacing.y(20),
                      elevation: 0,
                      splashColor:
                          theme.colorScheme.primaryContainer.withAlpha(30),
                      borderRadiusAll: Constant.buttonRadius.large,
                      backgroundColor: theme.colorScheme.primary,
                      child: MyText.labelLarge(
                        'Find Someone',
                        color: theme.colorScheme.onPrimary,
                        fontWeight: 600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
