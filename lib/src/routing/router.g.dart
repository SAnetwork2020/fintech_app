// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $onboardingRoute,
      $existingAccountRoute,
      $dashBoardRouteData,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      name: 'splash_screen',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding_screen',
      name: 'onboarding',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $existingAccountRoute => GoRouteData.$route(
      path: '/existing_account_screen',
      name: 'existing_account',
      factory: $ExistingAccountRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'login',
          name: 'login',
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'new_device_login',
          name: 'new_device_login',
          factory: $NewDeviceLoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sign_up',
          name: 'sign_up',
          factory: $SignUpRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'terms_and_conditions',
              name: 'terms_and_conditions',
              factory: $TermsAndConditionsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'privacy_policy',
              name: 'privacy_policy',
              factory: $PrivacyPolicyRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'forgot_password',
          name: 'forgot_password',
          factory: $ForgotPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'email_has_been_sent',
          name: 'email_has_been_sent',
          factory: $EmailHasBeenSentRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'verify_email',
          name: 'verify_email',
          factory: $VerifyYourEmailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'reset_your_password',
          name: 'reset_your_password',
          factory: $ResetYourPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sms_has_been_sent',
          name: 'sms_has_been_sent',
          factory: $SmsHasBeenSentRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'one_time_password',
          name: 'one_time_password',
          factory: $OtpRouteRouteExtension._fromState,
        ),
      ],
    );

extension $ExistingAccountRouteExtension on ExistingAccountRoute {
  static ExistingAccountRoute _fromState(GoRouterState state) =>
      const ExistingAccountRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewDeviceLoginRouteExtension on NewDeviceLoginRoute {
  static NewDeviceLoginRoute _fromState(GoRouterState state) =>
      const NewDeviceLoginRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/new_device_login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sign_up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TermsAndConditionsRouteExtension on TermsAndConditionsRoute {
  static TermsAndConditionsRoute _fromState(GoRouterState state) =>
      const TermsAndConditionsRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sign_up/terms_and_conditions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PrivacyPolicyRouteExtension on PrivacyPolicyRoute {
  static PrivacyPolicyRoute _fromState(GoRouterState state) =>
      const PrivacyPolicyRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sign_up/privacy_policy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ForgotPasswordRouteExtension on ForgotPasswordRoute {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/forgot_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EmailHasBeenSentRouteExtension on EmailHasBeenSentRoute {
  static EmailHasBeenSentRoute _fromState(GoRouterState state) =>
      const EmailHasBeenSentRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/email_has_been_sent',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VerifyYourEmailRouteExtension on VerifyYourEmailRoute {
  static VerifyYourEmailRoute _fromState(GoRouterState state) =>
      const VerifyYourEmailRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/verify_email',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ResetYourPasswordRouteExtension on ResetYourPasswordRoute {
  static ResetYourPasswordRoute _fromState(GoRouterState state) =>
      const ResetYourPasswordRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/reset_your_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SmsHasBeenSentRouteExtension on SmsHasBeenSentRoute {
  static SmsHasBeenSentRoute _fromState(GoRouterState state) =>
      const SmsHasBeenSentRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sms_has_been_sent',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OtpRouteRouteExtension on OtpRouteRoute {
  static OtpRouteRoute _fromState(GoRouterState state) => const OtpRouteRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/one_time_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $dashBoardRouteData => ShellRouteData.$route(
      navigatorKey: DashBoardRouteData.$navigatorKey,
      factory: $DashBoardRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/payment',
          factory: $PaymentRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'airtime',
              factory: $AirtimeRouteExtension._fromState,
              parentNavigatorKey: AirtimeRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'data',
              factory: $DataRouteExtension._fromState,
              parentNavigatorKey: DataRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'cardless_withdrawal',
              factory: $CardlessWithdrawalRouteExtension._fromState,
              parentNavigatorKey: CardlessWithdrawalRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'add_money',
              factory: $AddMoneyRouteExtension._fromState,
              parentNavigatorKey: AddMoneyRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'transaction_history',
              factory: $TransactionHistoryRouteExtension._fromState,
              parentNavigatorKey: TransactionHistoryRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'apply_for_loan',
              factory: $ApplyForLoanRouteExtension._fromState,
              parentNavigatorKey: ApplyForLoanRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'electricity',
              factory: $ElectricityRouteExtension._fromState,
              parentNavigatorKey: ElectricityRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'internet',
              factory: $InternetRouteExtension._fromState,
              parentNavigatorKey: InternetRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'pay_tv',
              factory: $PaytvRouteExtension._fromState,
              parentNavigatorKey: PaytvRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'transport',
              factory: $TransportRouteExtension._fromState,
              parentNavigatorKey: TransportRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'betting',
              factory: $BettingRouteExtension._fromState,
              parentNavigatorKey: BettingRoute.$parentNavigatorKey,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/transfer',
          factory: $TransferRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/support',
          factory: $SupportRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/settings',
          factory: $SettingsRouteExtension._fromState,
        ),
      ],
    );

extension $DashBoardRouteDataExtension on DashBoardRouteData {
  static DashBoardRouteData _fromState(GoRouterState state) =>
      const DashBoardRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PaymentRouteExtension on PaymentRoute {
  static PaymentRoute _fromState(GoRouterState state) => const PaymentRoute();

  String get location => GoRouteData.$location(
        '/payment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AirtimeRouteExtension on AirtimeRoute {
  static AirtimeRoute _fromState(GoRouterState state) => const AirtimeRoute();

  String get location => GoRouteData.$location(
        '/payment/airtime',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DataRouteExtension on DataRoute {
  static DataRoute _fromState(GoRouterState state) => const DataRoute();

  String get location => GoRouteData.$location(
        '/payment/data',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CardlessWithdrawalRouteExtension on CardlessWithdrawalRoute {
  static CardlessWithdrawalRoute _fromState(GoRouterState state) =>
      const CardlessWithdrawalRoute();

  String get location => GoRouteData.$location(
        '/payment/cardless_withdrawal',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddMoneyRouteExtension on AddMoneyRoute {
  static AddMoneyRoute _fromState(GoRouterState state) => const AddMoneyRoute();

  String get location => GoRouteData.$location(
        '/payment/add_money',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TransactionHistoryRouteExtension on TransactionHistoryRoute {
  static TransactionHistoryRoute _fromState(GoRouterState state) =>
      const TransactionHistoryRoute();

  String get location => GoRouteData.$location(
        '/payment/transaction_history',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ApplyForLoanRouteExtension on ApplyForLoanRoute {
  static ApplyForLoanRoute _fromState(GoRouterState state) =>
      const ApplyForLoanRoute();

  String get location => GoRouteData.$location(
        '/payment/apply_for_loan',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ElectricityRouteExtension on ElectricityRoute {
  static ElectricityRoute _fromState(GoRouterState state) =>
      const ElectricityRoute();

  String get location => GoRouteData.$location(
        '/payment/electricity',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $InternetRouteExtension on InternetRoute {
  static InternetRoute _fromState(GoRouterState state) => const InternetRoute();

  String get location => GoRouteData.$location(
        '/payment/internet',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PaytvRouteExtension on PaytvRoute {
  static PaytvRoute _fromState(GoRouterState state) => const PaytvRoute();

  String get location => GoRouteData.$location(
        '/payment/pay_tv',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TransportRouteExtension on TransportRoute {
  static TransportRoute _fromState(GoRouterState state) =>
      const TransportRoute();

  String get location => GoRouteData.$location(
        '/payment/transport',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BettingRouteExtension on BettingRoute {
  static BettingRoute _fromState(GoRouterState state) => const BettingRoute();

  String get location => GoRouteData.$location(
        '/payment/betting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TransferRouteExtension on TransferRoute {
  static TransferRoute _fromState(GoRouterState state) => const TransferRoute();

  String get location => GoRouteData.$location(
        '/transfer',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SupportRouteExtension on SupportRoute {
  static SupportRoute _fromState(GoRouterState state) => const SupportRoute();

  String get location => GoRouteData.$location(
        '/support',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
