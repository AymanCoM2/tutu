/*
* File : Cupertino Widget Home Page
* Version : 1.0.0
* */

import './p_notifier.dart';
import './p_theme.dart';
import './my_container.dart';
import './my_spacing.dart';
import './my_text.dart';
import './d_item.dart';
import './
import './o/dialog/cupertino_dialogs_screen.dart';
import './o/form/cupertino_inputs_screen.dart';
import './on/charts/cartesian_chart_screen.dart';
import './on/charts/circular_chart_screen.dart';
import './on/charts/other_chart_screen.dart';
import './on/date_range/date_ranges_screen.dart';
import './on/gauges/gauges_screen.dart';
import './on/sliders/range_selectors_screen.dart';
import './on/sliders/range_sliders_screen.dart';
import './on/sliders/sliders_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OthersHome extends StatefulWidget {
  @override
  State<OthersHome> createState() => _OthersHomeState();
}

class _OthersHomeState extends State<OthersHome> {
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
    theme = AppTheme.theme;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotifier>(
        builder: (BuildContext context, AppNotifier value, Widget? child) {
      return ListView(
        padding: MySpacing.fromLTRB(20, 0, 20, 80),
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          MyText.titleSmall(
            "SYNCFUSION",
            fontWeight: 700,
            muted: true,
          ),
          MySpacing.height(20),
          GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              padding: MySpacing.zero,
              mainAxisSpacing: 20,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              children: <Widget>[
                SinglePageItem(
                  title: "Cartesian Chart",
                  icon: Images.cartesianBarIcon,
                  navigation: CartesianChartScreen(),
                ),
                SinglePageItem(
                  title: "Circular Chart",
                  icon: Images.pieChartIcon,
                  navigation: CircularChartScreen(),
                ),
                SinglePageItem(
                  title: "Other Chart",
                  icon: Images.cartesianBarSyncIcon,
                  navigation: OtherChartScreen(),
                ),
                SinglePageItem(
                  title: "Date Range",
                  icon: Images.calendarIcon,
                  navigation: DateRangesScreen(),
                ),
                SinglePageItem(
                  title: "Gauges",
                  icon: Images.gaugeIcon,
                  navigation: GaugesScreen(),
                ),
                SinglePageItem(
                  title: "Sliders",
                  icon: Images.sliderHorizontalIcon,
                  navigation: SlidersScreen(),
                ),
                SinglePageItem(
                  title: "Range Sliders",
                  icon: Images.rangeSliderHorizontalIcon,
                  navigation: RangeSlidersScreen(),
                ),
                SinglePageItem(
                  title: "Range Selector",
                  icon: Images.rangeSelectorIcon,
                  navigation: RangeSelectorsScreen(),
                ),
              ]),
          MySpacing.height(20),
          MyText.titleSmall(
            "CUPERTINO",
            fontWeight: 700,
            muted: true,
          ),
          MySpacing.height(20),
          GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              padding: MySpacing.zero,
              mainAxisSpacing: 20,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              children: <Widget>[
                SinglePageItem(
                  title: "Dialogs",
                  icon: Images.dialogIcon,
                  navigation: CupertinoDialogsScreen(),
                ),
                SinglePageItem(
                  title: "Inputs",
                  icon: Images.formIcon,
                  navigation: CupertinoInputsScreen(),
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
          )
        ],
      );
    });
  }
}
