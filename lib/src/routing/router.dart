import 'package:fintech_app/src/features/authentication/presentation/login_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:fintech_app/src/features/home/presentation/home_screen.dart';
import 'package:fintech_app/src/features/onboarding/onboarding_screen.dart';
import 'package:fintech_app/src/features/onboarding/splash_screen.dart';
import 'package:fintech_app/src/features/settings/presentations/profile/profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../common_widgets/transaction_status.dart';
import '../constants/constants.dart';
import '../features/authentication/presentation/email_has_been_sent.dart';
import '../features/authentication/presentation/forgot_password.dart';
import '../features/authentication/presentation/new_device_login.dart';
import '../features/authentication/presentation/sms_has_been_sent.dart';
import '../features/onboarding/existing_account_screen.dart';
import '../features/payments/presentation/add_money/bank_transfer.dart';
import '../features/payments/presentation/betting/betting.dart';
import '../features/payments/presentation/buy_airtime/buy_airtime.dart';
import '../features/payments/presentation/buy_data/buy_data.dart';
import '../features/payments/presentation/electricity/electricity.dart';
import '../features/payments/presentation/get_loans/get_loans.dart';
import '../features/payments/presentation/internet/internet.dart';
import '../features/payments/presentation/pay_tv/pay_tv.dart';
import '../features/payments/presentation/payments.dart';
import '../features/payments/presentation/transaction_history/transaction_history.dart';
import '../features/payments/presentation/transport/transport.dart';
import '../features/payments/presentation/withdraw_money.dart/withdraw_money.dart';
import '../features/settings/presentations/bank_statement.dart';
import '../features/settings/presentations/beneficiary_list/benficiary_list_screen.dart';
import '../features/settings/presentations/saved_cards/add_new_card_screen.dart';
import '../features/settings/presentations/saved_cards/saved_cards_screen.dart';
import '../features/settings/presentations/security/security_screen.dart';
import '../features/settings/presentations/settings.dart';
part 'router.g.dart';

// @riverpod
// GoRouter goRouter(GoRouterRef ref) {
//   return GoRouter(
//     initialLocation: "/",
//     debugLogDiagnostics: true,
//     routes: $appRoutes,
//     navigatorKey: rootNavigatorKey,
//     // refreshListenable:
//   );
// }

@TypedGoRoute<SplashRoute>(
  path: "/",
  name: "splash_screen",
)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = "/";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

@TypedGoRoute<OnboardingRoute>(
  path: "/onboarding_screen",
  name: "onboarding",
)
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();
  static const path = "/onboarding_screen";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingScreen();
}

@TypedGoRoute<ExistingAccountRoute>(
  path: "/existing_account_screen",
  name: "existing_account",
)
class ExistingAccountRoute extends GoRouteData {
  const ExistingAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ExistingAccountScreen();
}

@TypedGoRoute<LoginRoute>(
  path: "/login",
  name: "login",
)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = "/login";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<ForgotPasswordRoute>(
  path: "/forgot_password",
  name: "forgot_password",
)
class ForgotPasswordRoute extends GoRouteData {
  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgotPasswordScreen();
}

@TypedGoRoute<SignUpRoute>(
  path: "/sign_up",
  name: "sign_up",
)
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignUpScreen();
}

@TypedGoRoute<SmsHasBeenSentRoute>(
  path: "/sms_has_been_sent",
  name: "sms_has_been_sent",
)
class SmsHasBeenSentRoute extends GoRouteData {
  const SmsHasBeenSentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SmsHasBeenSentScreen();
}

@TypedGoRoute<EmailHasBeenSentRoute>(
  path: "/email_has_been_sent",
  name: "email_has_been_sent",
)
class EmailHasBeenSentRoute extends GoRouteData {
  const EmailHasBeenSentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EmailHasBeenSentScreen();
}

@TypedGoRoute<TransactionSuccessfulRoute>(
  path: "/transaction_successful_screen",
  name: "transaction_successful_screen",
)
class TransactionSuccessfulRoute extends GoRouteData {
  const TransactionSuccessfulRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TransactionSuccessfulScreen();
}

@TypedGoRoute<TransactionFailedRoute>(
  path: "/transaction_failed_screen",
  name: "transaction_failed_screen",
)
class TransactionFailedRoute extends GoRouteData {
  const TransactionFailedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TransactionFailedScreen();
}

@TypedGoRoute<WelcomeBackRoute>(
  path: "/welcome_back_screen",
  name: "welcome_back_screen",
)
class WelcomeBackRoute extends GoRouteData {
  const WelcomeBackRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WelcomeBackScreen();
}

@TypedGoRoute<HomeRoute>(
  path: "/home_screen",
  name: "home_screen",
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<SettingsRoute>(
  path: "/settings",
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ProfileRoute>(path: "profile"),
    TypedGoRoute<BankStatementRoute>(path: "bank_statement"),
    TypedGoRoute<BeneficiaryListRoute>(path: "benficiaries"),
    TypedGoRoute<SecurityRoute>(path: "security"),
    TypedGoRoute<SavedCardsRoute>(
      path: "saved_cards",
      routes: [
        TypedGoRoute<AddNewCardRoute>(path: "add_new_card"),
      ],
    ),
    // TypedGoRoute(path: "/BankStatementScreen"),
    // TypedGoRoute(path: "/BankStatementScreen"),
    // TypedGoRoute(path: "/BankStatementScreen"),
    // TypedGoRoute(path: "/BankStatementScreen"),
    // TypedGoRoute(path: "/BankStatementScreen"),
  ],
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsScreen();
}

// @TypedGoRoute<BankStatementRoute>(
//   path: "/BankStatementScreen",
//   // name: "SignUp",
// )
class BankStatementRoute extends GoRouteData {
  const BankStatementRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BankStatementScreen();
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileScreen();
}

class SavedCardsRoute extends GoRouteData {
  const SavedCardsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SavedCardsScreen();
}

class SecurityRoute extends GoRouteData {
  const SecurityRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SecurityScreen();
}

class BeneficiaryListRoute extends GoRouteData {
  const BeneficiaryListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BeneficiaryListScreen();
}

class AddNewCardRoute extends GoRouteData {
  const AddNewCardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AddNewCardScreen();
}

// class ProfileRoute extends GoRouteData {
//   const ProfileRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) =>
//       const ProfileScreen();
// }
// class ProfileRoute extends GoRouteData {
//   const ProfileRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) =>
//       const ProfileScreen();
// }
// class ProfileRoute extends GoRouteData {
//   const ProfileRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) =>
//       const ProfileScreen();
// }
// class ProfileRoute extends GoRouteData {
//   const ProfileRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) =>
//       const ProfileScreen();
// }

@TypedGoRoute<PaymentRoute>(
  path: "/payment",
  routes: [
    TypedGoRoute<BankTransferRoute>(path: "bank_transfer"),
    TypedGoRoute<CardlessWithdrawalRoute>(path: "cardless_withdrawa"),
    TypedGoRoute<TransactionHistoryRoute>(path: "transaction_history"),
    TypedGoRoute<TvRoute>(path: "tv"),
    TypedGoRoute<InternetRoute>(path: "internet"),
    TypedGoRoute<ApplyForLoanRoute>(path: "apply_forLoan"),
    TypedGoRoute<ElectricityRoute>(path: "electricity"),
    TypedGoRoute<DataRoute>(path: "data"),
    TypedGoRoute<AirtimeRoute>(path: "airtime"),
    TypedGoRoute<BettingRoute>(path: "betting"),
    TypedGoRoute<TransportRoute>(path: "transport"),
  ],
)
class PaymentRoute extends GoRouteData {
  const PaymentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PaymentScreen();
  }
}

class BankTransferRoute extends GoRouteData {
  const BankTransferRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BankTransferScreen();
  }
}

class CardlessWithdrawalRoute extends GoRouteData {
  const CardlessWithdrawalRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CardlessWithdrawalScreen();
  }
}

class TransactionHistoryRoute extends GoRouteData {
  const TransactionHistoryRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TransactionHistoryScreen();
  }
}

class TvRoute extends GoRouteData {
  const TvRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TvScreen();
  }
}

class InternetRoute extends GoRouteData {
  const InternetRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InternetScreen();
  }
}

class ApplyForLoanRoute extends GoRouteData {
  const ApplyForLoanRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ApplyForLoanScreen();
  }
}

class ElectricityRoute extends GoRouteData {
  const ElectricityRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ElectricityScreen();
  }
}

class DataRoute extends GoRouteData {
  const DataRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DataScreen();
  }
}

class AirtimeRoute extends GoRouteData {
  const AirtimeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AirtimeScreen();
  }
}

class BettingRoute extends GoRouteData {
  const BettingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BettingScreen();
  }
}

class TransportRoute extends GoRouteData {
  const TransportRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TransportScreen();
  }
}
