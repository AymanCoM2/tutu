import './_password1_screen.dart';
import './_password2_screen.dart';
import './_screen.dart';
import './_screen.dart';
import './register_screen.dart';
import './rification_screen.dart';
import './er1_screen.dart';
import './er2_screen.dart';
import './acebook_page.dart';
import './ome_screen.dart';
import './hatsapp_page.dart';
import './se_full_app.dart';
import './ms_dashboard_screen.dart';
import './eller_dashboard_screen.dart';
import './_full_app.dart';
import './n_boarding_screen.dart';
import './ndyman_full_app.dart';
import './th_full_app.dart';
import './_login_screen.dart';
import './_onboarding_screen.dart';
import './_password_screen.dart';
import './_profile_screen.dart';
import './_register_screen.dart';
import './ome_screen.dart';
import './_login_screen.dart';
import './_onboarding_screen.dart';
import './_password_screen.dart';
import './_register_screen.dart';
import './ategery_screen.dart';
import './_app_screen.dart';
import './_cart_screen.dart';
import './uestion_screen.dart';
import './enance_screen.dart';
import './ternet_screen.dart';
import './not_found_screen.dart';
import './ct_sold_out_screen.dart';
import './_screen.dart';
import './pany_profile_screen.dart';
import './t_profile_screen.dart';
import './file_screen.dart';
import './ustomize_screen.dart';
import './uestion_type1_screen.dart';
import './uestion_type2_screen.dart';
import './ount_setting_screen.dart';
import './ic_setting_screen.dart';
import './ification_setting_screen.dart';
import './vacy_security_setting_screen.dart';
import './opping_login_screen.dart';
import './opping_onboarding_screen.dart';
import './opping_password_screen.dart';
import './opping_profile_screen.dart';
import './opping_register_screen.dart';
import './al_full_app.dart';
import './et_crypto_screen.dart';
import './et_home_screen.dart';
import './et_payment_screen.dart';
import './p_notifier.dart';
import './p_theme.dart';
import './my_container.dart';
import './my_spacing.dart';
import './my_text.dart';
import './d_item.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:provider/provider.dart';

class AppsHome extends StatefulWidget {
  @override
  _AppsHomeState createState() => _AppsHomeState();
}

class _AppsHomeState extends State<AppsHome> {
  late CustomTheme customTheme;
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
    customTheme = AppTheme.customTheme;
    theme = AppTheme.theme;
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
              "APPS",
              fontWeight: 700,
              muted: true,
            ),
            GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                padding: MySpacing.top(20),
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                children: <Widget>[
                  SinglePageItem(
                    title: "Shopping",
                    iconData: LucideIcons.store,
                    navigation: ShoppingOnboardingScreen(),
                  ),
                  SinglePageItem(
                    iconData: Icons.health_and_safety_outlined,
                    title: "Health",
                    navigation: HealthFullApp(),
                  ),
                  SinglePageItem(
                    title: "Food",
                    iconData: LucideIcons.utensilsCrossed,
                    navigation: FoodOnboardingScreen(),
                  ),
                  SinglePageItem(
                    title: "Hotel",
                    iconData: LucideIcons.bed,
                    navigation: HotelOnboardingScreen(),
                  ),
                  SinglePageItem(
                    iconData: Icons.local_library_outlined,
                    title: "Course",
                    navigation: CourseFullApp(),
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.instagram,
                    title: "Social",
                    navigation: SocialFullApp(),
                  ),
                  SinglePageItem(
                    title: "Event",
                    iconData: LucideIcons.ganttChart,
                    navigation: EventFullApp(),
                  ),
                  SinglePageItem(
                    title: "Music",
                    iconData: LucideIcons.music,
                    navigation: MusicOnboardingScreen(),
                  ),
                  SinglePageItem(
                    title: "Chat",
                    iconData: LucideIcons.messagesSquare,
                    navigation: ChatHomeScreen(),
                  ),
                  SinglePageItem(
                    iconData: Icons.engineering_outlined,
                    title: "Handyman",
                    navigation: HandymanFullApp(),
                  ),
                  SinglePageItem(
                    iconData: LucideIcons.newspaper,
                    title: "News",
                    navigation: NewsCategoryScreen(),
                  ),
                ]),
            MySpacing.height(20),
            MyText.titleSmall(
              "PAGES",
              fontWeight: 700,
              muted: true,
            ),
            GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                padding: MySpacing.top(20),
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                children: <Widget>[
                  SingleGridItem(
                    title: "Quiz",
                    iconData: LucideIcons.scrollText,
                    isComingSoon: true,
                    comingSoonText: "Quiz app is coming soon",
                    items: [
                      SinglePageItem(
                        iconData: LucideIcons.scrollText,
                        title: "Customize",
                        navigation: QuizCustomizeScreen(),
                      ),
                      SinglePageItem(
                        iconData: LucideIcons.scrollText,
                        title: "Question 1",
                        navigation: QuizQuestionType1Screen(),
                      ),
                      SinglePageItem(
                        iconData: LucideIcons.scrollText,
                        title: "Question 2",
                        navigation: QuizQuestionType2Screen(),
                      ),
                    ],
                  ),
                  SinglePageItem(
                    title: "Mail",
                    iconData: LucideIcons.mail,
                    navigation: MailHomeScreen(),
                  ),
                  SingleGridItem(
                    title: "Authentication",
                    iconData: LucideIcons.scanFace,
                    items: <SinglePageItem>[
                      SinglePageItem(
                        title: "Login 1",
                        navigation: ShoppingLoginScreen(),
                        iconData: LucideIcons.scanFace,
                      ),
                      SinglePageItem(
                        title: "Login 2",
                        iconData: LucideIcons.scanFace,
                        navigation: HotelLoginScreen(),
                      ),
                      SinglePageItem(
                        title: "Login 3",
                        iconData: LucideIcons.scanFace,
                        navigation: MusicLoginScreen(),
                      ),
                      SinglePageItem(
                        title: "Login 4",
                        iconData: LucideIcons.scanFace,
                        navigation: Login1Screen(),
                      ),
                      SinglePageItem(
                        title: "Login 5",
                        iconData: LucideIcons.scanFace,
                        navigation: Login2Screen(),
                      ),
                      SinglePageItem(
                        title: "Register 1",
                        iconData: LucideIcons.scanFace,
                        navigation: ShoppingRegisterScreen(),
                      ),
                      SinglePageItem(
                        title: "Register 2",
                        iconData: LucideIcons.scanFace,
                        navigation: HotelRegisterScreen(),
                      ),
                      SinglePageItem(
                        title: "Register 3",
                        iconData: LucideIcons.scanFace,
                        navigation: MusicRegisterScreen(),
                      ),
                      SinglePageItem(
                        title: "Register 4",
                        iconData: LucideIcons.scanFace,
                        navigation: Register1Screen(),
                      ),
                      SinglePageItem(
                        title: "Register 5",
                        iconData: LucideIcons.scanFace,
                        navigation: Register2Screen(),
                      ),
                      SinglePageItem(
                        title: "Reset Password 1",
                        iconData: LucideIcons.scanFace,
                        navigation: ShoppingPasswordScreen(),
                      ),
                      SinglePageItem(
                        title: "Reset Password 2",
                        iconData: LucideIcons.scanFace,
                        navigation: HotelPasswordScreen(),
                      ),
                      SinglePageItem(
                        title: "Reset Password 3",
                        iconData: LucideIcons.scanFace,
                        navigation: MusicPasswordScreen(),
                      ),
                      SinglePageItem(
                        title: "Reset Password 4",
                        iconData: LucideIcons.scanFace,
                        navigation: ForgotPassword1Screen(),
                      ),
                      SinglePageItem(
                        title: "Reset Password 5",
                        iconData: LucideIcons.scanFace,
                        navigation: ForgotPassword2Screen(),
                      ),
                      SinglePageItem(
                        title: "Login & Register",
                        iconData: LucideIcons.scanFace,
                        navigation: LoginRegisterScreen(),
                      ),
                      SinglePageItem(
                        title: "OTP Verification",
                        iconData: LucideIcons.scanFace,
                        navigation: OTPVerificationScreen(),
                      ),
                    ],
                  ),
                  SingleGridItem(
                    title: "Settings",
                    iconData: LucideIcons.settings,
                    items: <SinglePageItem>[
                      SinglePageItem(
                        title: "Basic",
                        iconData: LucideIcons.settings,
                        navigation: BasicSettingScreen(),
                      ),
                      SinglePageItem(
                        title: "Account",
                        iconData: LucideIcons.settings,
                        navigation: AccountSettingScreen(),
                      ),
                      SinglePageItem(
                        title: "Notification",
                        iconData: LucideIcons.settings,
                        navigation: NotificationSettingScreen(),
                      ),
                      SinglePageItem(
                        title: "Privacy",
                        iconData: LucideIcons.settings,
                        navigation: PrivacySecuritySettingScreen(),
                      ),
                    ],
                  ),
                  SingleGridItem(
                    title: "Profile",
                    iconData: LucideIcons.userCircle,
                    items: <SinglePageItem>[
                      SinglePageItem(
                        title: "Social",
                        iconData: LucideIcons.userCircle,
                        navigation: ProfileScreen(),
                      ),
                      SinglePageItem(
                        title: "Company",
                        iconData: LucideIcons.userCircle,
                        navigation: CompanyProfileScreen(),
                      ),
                      SinglePageItem(
                        title: "Shopping",
                        iconData: LucideIcons.userCircle,
                        navigation: ShoppingProfileScreen(),
                      ),
                      SinglePageItem(
                        title: "Hotel",
                        iconData: LucideIcons.userCircle,
                        navigation: HotelProfileScreen(),
                      ),
                      SinglePageItem(
                        title: "Edit",
                        iconData: LucideIcons.userCircle,
                        navigation: EditProfileScreen(),
                      ),
                    ],
                  ),
                  SingleGridItem(
                    title: "Dashboard",
                    iconData: LucideIcons.layoutDashboard,
                    items: <SinglePageItem>[
                      SinglePageItem(
                        title: "LMS",
                        iconData: LucideIcons.layoutDashboard,
                        navigation: LMSDashboardScreen(),
                      ),
                      SinglePageItem(
                        title: "Seller",
                        iconData: LucideIcons.layoutDashboard,
                        navigation: SellerDashboardScreen(),
                      ),
                    ],
                  ),
                  SingleGridItem(
                    title: "Wallet",
                    iconData: LucideIcons.wallet2,
                    items: <SinglePageItem>[
                      SinglePageItem(
                        title: "Home",
                        iconData: LucideIcons.wallet2,
                        navigation: WalletHomeScreen(),
                      ),
                      SinglePageItem(
                        title: "Payment",
                        iconData: LucideIcons.wallet2,
                        navigation: WalletPaymentScreen(),
                      ),
                      SinglePageItem(
                        title: "Crypto",
                        iconData: LucideIcons.wallet2,
                        navigation: WalletCryptoScreen(),
                      ),
                    ],
                  ),
                  SingleGridItem(
                    title: "Other",
                    iconData: LucideIcons.dice1,
                    items: <SinglePageItem>[
                      SinglePageItem(
                        title: "Whatsapp",
                        iconData: LucideIcons.messagesSquare,
                        navigation: ChatWhatsAppPage(),
                      ),
                      SinglePageItem(
                        title: "Facebook",
                        iconData: LucideIcons.messagesSquare,
                        navigation: ChatFacebookScreen(),
                      ),
                      SinglePageItem(
                        title: "About App",
                        iconData: LucideIcons.dice1,
                        navigation: AboutAppScreen(),
                      ),
                      SinglePageItem(
                        title: "Empty cart",
                        iconData: LucideIcons.dice1,
                        navigation: EmptyCartScreen(),
                      ),
                      SinglePageItem(
                        title: "FAQ",
                        iconData: LucideIcons.dice1,
                        navigation: FAQQuestionScreen(),
                      ),
                      SinglePageItem(
                        title: "Maintenance",
                        iconData: LucideIcons.dice1,
                        navigation: MaintenanceScreen(),
                      ),
                      SinglePageItem(
                        title: "No internet",
                        iconData: LucideIcons.dice1,
                        navigation: NoInternetScreen(),
                      ),
                      SinglePageItem(
                        title: "Page not found",
                        iconData: LucideIcons.dice1,
                        navigation: PageNotFoundScreen(),
                      ),
                      SinglePageItem(
                        title: "Sold out",
                        iconData: LucideIcons.dice1,
                        navigation: ProductSoldOutScreen(),
                      ),
                      SinglePageItem(
                        title: "Terms",
                        iconData: LucideIcons.dice1,
                        navigation: TermsScreen(),
                      ),
                    ],
                  ),
                ]),
            MyContainer(
              margin: MySpacing.y(20),
              borderRadiusAll: 4,
              color: theme.colorScheme.primary.withAlpha(24),
              child: Center(
                child: MyText.bodyMedium("More Apps are coming soon...",
                    fontWeight: 600, color: theme.colorScheme.primary),
              ),
            ),
          ],
        );
      },
    );
  }
}
