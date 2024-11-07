import './kify/controllers/full_app_controller.dart';
import './kify/views/home_screen.dart';
import './kify/views/meal_plan_screen.dart';
import './kify/views/profile_screen.dart';
import './kify/views/showcase_screen.dart';
import './p_theme.dart';
import './nstant.dart';
import './my_bottom_navigation_bar.dart';
import './my_bottom_navigation_bar_item.dart';
import './my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FullApp extends StatefulWidget {
  @override
  _FullAppState createState() => _FullAppState();
}

class _FullAppState extends State<FullApp> {
  late FullAppController controller;
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
    theme = AppTheme.cookifyTheme;
    controller = FullAppController();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      tag: 'full_app_controller',
      init: controller,
      builder: (controller) {
        return Theme(
          data: theme.copyWith(
              colorScheme: theme.colorScheme
                  .copyWith(secondary: theme.colorScheme.primaryContainer)),
          child: Scaffold(
            body: MyBottomNavigationBar(
              activeTitleStyle: MyTextStyle.bodySmall(
                  color: theme.colorScheme.primary, fontWeight: 800),
              activeContainerColor: theme.colorScheme.primary.withAlpha(120),
              containerShape: BoxShape.rectangle,
              myBottomNavigationBarType: MyBottomNavigationBarType.containered,
              containerRadius: Constant.containerRadius.small,
              backgroundColor: theme.colorScheme.primaryContainer,
              showLabel: false,
              labelSpacing: 8,
              initialIndex: 0,
              labelDirection: Axis.horizontal,
              itemList: [
                MyBottomNavigationBarItem(
                  page: HomeScreen(),
                  icon: Icon(
                    LucideIcons.home,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  activeIcon: Icon(
                    Icons.cottage,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  title: "Home",
                  activeIconColor: theme.colorScheme.primary,
                ),
                MyBottomNavigationBarItem(
                  page: ShowcaseScreen(),
                  icon: Icon(
                    LucideIcons.contact,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  activeIcon: Icon(
                    Icons.menu_book,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  title: "Explore",
                  activeIconColor: theme.colorScheme.primary,
                  activeTitleColor: theme.colorScheme.primary,
                ),
                MyBottomNavigationBarItem(
                  page: MealPlanScreen(),
                  icon: Icon(
                    LucideIcons.cookie,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  activeIcon: Icon(
                    Icons.lunch_dining,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  title: "Meal",
                  activeIconColor: theme.colorScheme.primary,
                  activeTitleColor: theme.colorScheme.primary,
                ),
                MyBottomNavigationBarItem(
                  page: ProfileScreen(),
                  icon: Icon(
                    LucideIcons.user,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  activeIcon: Icon(
                    Icons.person,
                    color: theme.colorScheme.primary,
                    size: 24,
                  ),
                  title: "Setting",
                  activeIconColor: theme.colorScheme.primary,
                  activeTitleColor: theme.colorScheme.primary,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
