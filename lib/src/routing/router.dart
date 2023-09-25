import 'package:fintech_app/src/constants/success_screend.dart';
import 'package:fintech_app/src/features/authentication/presentation/login_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/terms&condition.dart';
import 'package:fintech_app/src/features/authentication/presentation/verify_your_email_screen.dart';
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
import '../features/authentication/presentation/otp_screen.dart';
import '../features/authentication/presentation/privacy_policy.dart';
import '../features/authentication/presentation/reset_your_password.dart';
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
    routes: [
      TypedGoRoute<LoginRoute>(path: "login", name: "login"),
      TypedGoRoute<NewDeviceLoginRoute>(
          path: "new_device_login", name: "new_device_login"),
      TypedGoRoute<SignUpRoute>(path: "sign_up", name: "sign_up", routes: [
        TypedGoRoute<TermsAndConditionsRoute>(
            path: "terms_and_conditions", name: "terms_and_conditions"),
        TypedGoRoute<PrivacyPolicyRoute>(
            path: "privacy_policy", name: "privacy_policy"),
      ]),
      TypedGoRoute<ForgotPasswordRoute>(
          path: "forgot_password", name: "forgot_password"),
      TypedGoRoute<EmailHasBeenSentRoute>(
          path: "email_has_been_sent", name: "email_has_been_sent"),
      TypedGoRoute<VerifyYourEmailRoute>(
          path: "verify_email", name: "verify_email"),
      TypedGoRoute<ResetYourPasswordRoute>(
          path: "reset_your_password", name: "reset_your_password"),
      TypedGoRoute<SmsHasBeenSentRoute>(
          path: "sms_has_been_sent", name: "sms_has_been_sent"),
      TypedGoRoute<OtpRouteRoute>(
          path: "one_time_password", name: "one_time_password"),
    ])
class ExistingAccountRoute extends GoRouteData {
  const ExistingAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ExistingAccountScreen();
}

class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = "/login";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}
class NewDeviceLoginRoute extends GoRouteData {
  const NewDeviceLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NewDeviceLoginScreen();
}

class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignUpScreen();
}

class TermsAndConditionsRoute extends GoRouteData {
  const TermsAndConditionsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TermsAndConditionsScreen();
}

class PrivacyPolicyRoute extends GoRouteData {
  const PrivacyPolicyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PrivacyPolicyScreen();
}

class ForgotPasswordRoute extends GoRouteData {
  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgotPasswordScreen();
}

class SmsHasBeenSentRoute extends GoRouteData {
  const SmsHasBeenSentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SmsHasBeenSentScreen();
}

class EmailHasBeenSentRoute extends GoRouteData {
  const EmailHasBeenSentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EmailHasBeenSentScreen();
}

class VerifyYourEmailRoute extends GoRouteData {
  const VerifyYourEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VerifyYourEmailScreen();
}

class ResetYourPasswordRoute extends GoRouteData {
  const ResetYourPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ResetYourPasswordScreen();
}

class OtpRouteRoute extends GoRouteData {
  const OtpRouteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const OtpScreen();
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

@TypedGoRoute<SuccessRoute>(
  path: "/success_screen",
  name: "success_screen",
)
class SuccessRoute extends GoRouteData {
  const SuccessRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SuccessScreen();
  }
}
