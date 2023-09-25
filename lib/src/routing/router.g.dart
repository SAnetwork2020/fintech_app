// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $onboardingRoute,
      $existingAccountRoute,
      $transactionSuccessfulRoute,
      $transactionFailedRoute,
      $homeRoute,
      $settingsRoute,
      $paymentRoute,
      $successRoute,
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

RouteBase get $transactionSuccessfulRoute => GoRouteData.$route(
      path: '/transaction_successful_screen',
      name: 'transaction_successful_screen',
      factory: $TransactionSuccessfulRouteExtension._fromState,
    );

extension $TransactionSuccessfulRouteExtension on TransactionSuccessfulRoute {
  static TransactionSuccessfulRoute _fromState(GoRouterState state) =>
      const TransactionSuccessfulRoute();

  String get location => GoRouteData.$location(
        '/transaction_successful_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $transactionFailedRoute => GoRouteData.$route(
      path: '/transaction_failed_screen',
      name: 'transaction_failed_screen',
      factory: $TransactionFailedRouteExtension._fromState,
    );

extension $TransactionFailedRouteExtension on TransactionFailedRoute {
  static TransactionFailedRoute _fromState(GoRouterState state) =>
      const TransactionFailedRoute();

  String get location => GoRouteData.$location(
        '/transaction_failed_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home_screen',
      name: 'home_screen',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'profile',
          factory: $ProfileRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'bank_statement',
          factory: $BankStatementRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'benficiaries',
          factory: $BeneficiaryListRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'security',
          factory: $SecurityRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'saved_cards',
          factory: $SavedCardsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'add_new_card',
              factory: $AddNewCardRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

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

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/settings/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BankStatementRouteExtension on BankStatementRoute {
  static BankStatementRoute _fromState(GoRouterState state) =>
      const BankStatementRoute();

  String get location => GoRouteData.$location(
        '/settings/bank_statement',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BeneficiaryListRouteExtension on BeneficiaryListRoute {
  static BeneficiaryListRoute _fromState(GoRouterState state) =>
      const BeneficiaryListRoute();

  String get location => GoRouteData.$location(
        '/settings/benficiaries',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecurityRouteExtension on SecurityRoute {
  static SecurityRoute _fromState(GoRouterState state) => const SecurityRoute();

  String get location => GoRouteData.$location(
        '/settings/security',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SavedCardsRouteExtension on SavedCardsRoute {
  static SavedCardsRoute _fromState(GoRouterState state) =>
      const SavedCardsRoute();

  String get location => GoRouteData.$location(
        '/settings/saved_cards',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddNewCardRouteExtension on AddNewCardRoute {
  static AddNewCardRoute _fromState(GoRouterState state) =>
      const AddNewCardRoute();

  String get location => GoRouteData.$location(
        '/settings/saved_cards/add_new_card',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $paymentRoute => GoRouteData.$route(
      path: '/payment',
      factory: $PaymentRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'bank_transfer',
          factory: $BankTransferRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'cardless_withdrawa',
          factory: $CardlessWithdrawalRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'transaction_history',
          factory: $TransactionHistoryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'tv',
          factory: $TvRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'internet',
          factory: $InternetRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'apply_forLoan',
          factory: $ApplyForLoanRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'electricity',
          factory: $ElectricityRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'data',
          factory: $DataRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'airtime',
          factory: $AirtimeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'betting',
          factory: $BettingRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'transport',
          factory: $TransportRouteExtension._fromState,
        ),
      ],
    );

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

extension $BankTransferRouteExtension on BankTransferRoute {
  static BankTransferRoute _fromState(GoRouterState state) =>
      const BankTransferRoute();

  String get location => GoRouteData.$location(
        '/payment/bank_transfer',
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
        '/payment/cardless_withdrawa',
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

extension $TvRouteExtension on TvRoute {
  static TvRoute _fromState(GoRouterState state) => const TvRoute();

  String get location => GoRouteData.$location(
        '/payment/tv',
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

extension $ApplyForLoanRouteExtension on ApplyForLoanRoute {
  static ApplyForLoanRoute _fromState(GoRouterState state) =>
      const ApplyForLoanRoute();

  String get location => GoRouteData.$location(
        '/payment/apply_forLoan',
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

RouteBase get $successRoute => GoRouteData.$route(
      path: '/success_screen',
      name: 'success_screen',
      factory: $SuccessRouteExtension._fromState,
    );

extension $SuccessRouteExtension on SuccessRoute {
  static SuccessRoute _fromState(GoRouterState state) => const SuccessRoute();

  String get location => GoRouteData.$location(
        '/success_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
