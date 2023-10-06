import 'package:fintech_app/src/routing/router.dart';
import 'package:fintech_app/src/routing/router_listenable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class LoginScreen extends StatefulHookConsumerWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.welcomeBack.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 116.88),
              Text(
                "Welcome Back !",
                style: TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.cFFFFFF,
                ),
              ),
              const SizedBox(height: 40),
              Center(child: Assets.images.loginView.image()),
              const SizedBox(height: 40),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Please Enter Username";
                },
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Assets.icons.profile.svg(),
                ),
                hintText: "Enter Your Username / Email",
                filled: true,
                fillColor: AppColors.cFFFFFF,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Please Enter Password";
                },
                obscureText: !showPassword,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Assets.icons.lockOutline.svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.c000000.withOpacity(.6),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                suffixIcon: IconButton(
                  icon: showPassword
                      ? Assets.icons.eyeOpen.svg()
                      : Assets.icons.eyeClose.svg(),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                hintText: "Enter Password",
                filled: true,
                fillColor: AppColors.cFFFFFF,
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  context.push(const ForgotPasswordRoute().location);
                },
                child: Text(
                  "Forgot password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    color: AppColors.c1DC1B4,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomGradientButton(
                onPressed: () {
                  print("I am pressed");
                  HomeRoute().go(context);
                  // context.push(HomeRoute().location);
                  // context.push(const SettingsRoute().location);
                  // ref
                  //     .read(routerListenableProvider.notifier)
                  //     .removeOnboarding();
                  // onPressed: () => const WelcomeBackRoute().push(context),
                  // title: "Login",
                },
                child: Row(
                  children: [
                    Container(
                        width: 48.11,
                        height: 50,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.c3E56D2,
                        ),
                        child: Assets.icons.fingerprintOutline.svg()),
                    const Spacer(),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              Text.rich(
                TextSpan(
                  text: "Dont have an account? ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.cFFFFFF,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.c1DC1B4,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => context.go(const SignUpRoute().location),
                      // ..onTap = () => const SignUpRoute().go(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Use Face ID to Login",
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.cFFFFFF,
                ),
              ),
              Assets.images.faceId.image(),
            ],
          ),
        ),
      ),
    );
  }
}
