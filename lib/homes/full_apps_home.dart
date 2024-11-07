import './ions/nft/views/splash_screen.dart' as nft;
import './ions/rental_service/views/splash_screen.dart' as rental_service;
import './ions/shopping/views/splash_screen.dart' as shopping;
import './ions/shopping_manager/views/login_screen.dart' as shopping_manager;
import './kify/views/splash_screen.dart' as cookify;
import './ing/views/splash_screen.dart' as dating;
import './ate/views/splash_screen.dart' as estate;
import './emade/views/splash_screen.dart' as homemade;
import './rning/views/splash_screen.dart' as learning;
import './cookify/views/splash_screen.dart';
import './dating/views/splash_screen.dart';
import './estate/views/splash_screen.dart';

import './grocery/full_app.dart';
import './medicare/splash_screen.dart';
import './muvi/views/splash_screen.dart' as muvi;
import './shopping/full_app.dart';
import './p_notifier.dart';
import './p_theme.dart';
import './my_container.dart';
import './my_spacing.dart';
import './my_text.dart';
import './d_item.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:provider/provider.dart';

class FullAppsHome extends StatefulWidget {
  @override
  _FullAppsHomeState createState() => _FullAppsHomeState();
}

class _FullAppsHomeState extends State<FullAppsHome>
    with TickerProviderStateMixin {
  late ThemeData theme;
  late CustomTheme customTheme;

  @override
  void initState() {
    super.initState();
    theme = AppTheme.theme;
    customTheme = AppTheme.customTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotifier>(
      builder: (BuildContext context, AppNotifier value, Widget? child) {
        return ListView(
          padding: MySpacing.fromLTRB(20, 0, 20, 80),
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            MyText.titleSmall(
              "COOL ANIMATION",
              fontWeight: 700,
              muted: true,
            ),
            MySpacing.height(20),
            GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                padding: MySpacing.zero,
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                children: const <Widget>[
                  SinglePageItem(
                    // iconData: LucideIcons.shoppingOutline,
                    iconData: LucideIcons.shoppingBag,
                    navigation: shopping.SplashScreen(),
                    title: "Shopping",
                  ),
                  SinglePageItem(
                    title: "Rental Service",
                    // icon: './assets/icons/car_outline.png',
                    iconData: LucideIcons.car,
                    navigation: rental_service.SplashScreen(),
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.bitcoin,
                    navigation: nft.SplashScreen(),
                    title: "NFT",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.userCog,
                    navigation: shopping_manager.LoginScreen(),
                    title: "Shopping Manager",
                  ),
                  // SinglePageItem(
                  //   iconData: LucideIcons.flower2,
                  //   navigation: PlantSplashScreen(),
                  //   title: "Plants",
                  // ),
                ]),
            MySpacing.height(20),
            MyText.titleSmall(
              "FULL APPS",
              fontWeight: 700,
              muted: true,
            ),
            MySpacing.height(20),
            GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                padding: MySpacing.zero,
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                children: <Widget>[
                  SinglePageItem(
                    iconData: LucideIcons.cake,
                    navigation: homemade.SplashScreen(),
                    title: "Homemade",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.cookie,
                    navigation: CookifySplashScreen(),
                    title: "Cookify",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.cross,
                    navigation: MediCareSplashScreen(),
                    title: "Medi Care",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.shoppingCart,
                    navigation: ShoppingFullApp(),
                    title: "Shopping",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.building2,
                    navigation: EstateSplashScreen(),
                    title: "Estate",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.apple,
                    title: "Grocery",
                    navigation: GroceryFullApp(),
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.heart,
                    navigation: DatingSplashScreen(),
                    title: "Dating",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.tv,
                    navigation: muvi.SplashScreen(),
                    title: "Muvi",
                  ),
                  // SinglePageItem(
                  //   iconData: LucideIcons.dumbbell,
                  //   navigation: fitness.SplashScreen(),
                  //   title: "Fitness",
                  // ),
                ]),
            MySpacing.height(20),
            MyText.titleSmall(
              "MATERIAL YOU",
              fontWeight: 700,
              muted: true,
            ),
            MySpacing.height(20),
            GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                padding: MySpacing.zero,
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                children: <Widget>[
                  SinglePageItem(
                    iconData: LucideIcons.bookOpen,
                    navigation: learning.SplashScreen(),
                    title: "Learning",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.chefHat,
                    navigation: cookify.SplashScreen(),
                    title: "Cookify",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.heart,
                    navigation: dating.SplashScreen(),
                    title: "Dating",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.building,
                    navigation: estate.SplashScreen(),
                    title: "Estate",
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.cake,
                    navigation: homemade.SplashScreen(),
                    title: "Homemade",
                  ),
                ]),
            MyContainer(
              margin: MySpacing.y(20),
              borderRadiusAll: 4,
              color: theme.colorScheme.primary.withAlpha(24),
              child: Center(
                child: MyText.bodyMedium("More widgets are coming very soon...",
                    fontWeight: 600, color: theme.colorScheme.primary),
              ),
            ),
          ],
        );
      },
    );
  }
}
