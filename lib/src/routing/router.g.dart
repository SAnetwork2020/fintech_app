// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $onboardingRoute,
      $loginRoute,
      $signUpRoute,
      $transactionSuccessfulRoute,
      $transactionFailedRoute,
      $welcomeBackRoute,
      $homeRoute,
      $settingsRoute,
      $paymentRoute,
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

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      name: 'login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
      path: '/sign_up',
      name: 'sign_up',
      factory: $SignUpRouteExtension._fromState,
    );

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/sign_up',
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

RouteBase get $welcomeBackRoute => GoRouteData.$route(
      path: '/welcome_back_screen',
      name: 'welcome_back_screen',
      factory: $WelcomeBackRouteExtension._fromState,
    );

extension $WelcomeBackRouteExtension on WelcomeBackRoute {
  static WelcomeBackRoute _fromState(GoRouterState state) =>
      const WelcomeBackRoute();

  String get location => GoRouteData.$location(
        '/welcome_back_screen',
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

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'8e45f200e28579df04c57050baccdc0ce243957a';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
