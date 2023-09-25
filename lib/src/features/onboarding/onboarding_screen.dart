// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fintech_app/src/routing/router.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../common_widgets/custom_gradient_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();

  int currentPage = 0;
  int? lastPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.onboardingBg.provider(),
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.c050017.withOpacity(.3),
        // backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 19.0),
              child: Row(
                children: [
                  Assets.icons.logo.svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.cFFFFFF,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "PAYFLEX",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.cFFFFFF,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 57),
            Center(
              child: SizedBox(
                width: 350,
                height: 301.07,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                      lastPage = currentPage + 1;
                    });
                  },
                  itemCount: onboardingList.length,
                  itemBuilder: (context, index) {
                    return onboardingList[index].image.image();
                  },
                ),
              ),
            ),
            // const SizedBox(height: 75.66),
            const SizedBox(height: 60.66),
            // const SizedBox(height: 123.93),
            Expanded(
              child: Container(
                // width: double.maxFinite,
                // height: 300,
                padding: const EdgeInsets.only(left: 25.0),
                color: AppColors.c050017,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 67),
                    Row(
                      children: List.generate(
                        onboardingList.length,
                        (index) => InkWell(
                          onTap: () {
                          //  context.go(const ExistingAccountRoute().location):
                          print("lastPage:$lastPage and totalPage:${onboardingList.length}");
                            controller.animateToPage(
                              index,
                              duration: const Duration(
                                milliseconds: 200,
                              ),
                              curve: Curves.bounceInOut,
                            );
                          },
                          child: AnimatedContainer(
                            height: 15,
                            width: 15,
                            margin: const EdgeInsets.all(5),
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColors.cFFFFFF,
                              ),
                              color: index == currentPage
                                  ? AppColors.cFFFFFF
                                  : AppColors.c050017,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      onboardingList[currentPage].title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      onboardingList[currentPage].desc,
                      style: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomGradientButton(
                          title: "Next",
                          borderRadius: BorderRadius.circular(10),
                          width: 100.5,
                          height: 50,
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          onPressed: () {
                            lastPage == onboardingList.length? context.go(const ExistingAccountRoute().location):
                            controller.nextPage(
                              duration: const Duration(
                                milliseconds: 200,
                              ),
                              curve: Curves.bounceInOut,
                            );
                          },
                        ),
                        const SizedBox(width: 50),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .push(const ExistingAccountRoute().location);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              backgroundColor: AppColors.cFFFFFF,
                            ),
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.c000000,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )
            // Assets.images.onboardingPix.image(),
          ],
        ),
      ),
    );
  }
}

List<OnboardingObject> onboardingList = [
  OnboardingObject(
    title: "Welcome",
    desc:
        """Welcome to PAYFLEX! Your all-in-one solution for seamless financial management. Empower your finances with our cutting-edge tools and features.""",
    image: Assets.images.onboardingPix,
  ),
  OnboardingObject(
    title: "Quick Transactions",
    desc:
        '''Instantly move money, make payments, and manage investments in seconds. Your fast-track to financial control.''',
    image: Assets.images.onboardingPix2,
  ),
  OnboardingObject(
    title: "Start Saving Now",
    desc:
        '''Unlock your saving potential with us. Our platform makes it effortless to set money aside, helping you achieve your financial goals faster and smarter.''',
    image: Assets.images.onboardingPix3,
  ),
];

class OnboardingObject {
  final String title;
  final String desc;
  final AssetGenImage image;
  OnboardingObject({
    required this.title,
    required this.desc,
    required this.image,
  });
}
