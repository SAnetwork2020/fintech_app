import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class MessageUsScreen extends StatelessWidget {
  const MessageUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 47),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Assets.icons.backArrow.svg(),
                  ),
                  const SizedBox(width: 15),
                  Stack(
                    children: [
                      Container(
                        width: 49,
                        height: 49,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        child: Assets.images.gregoryStones.image(),
                      ),
                      Positioned(
                        left: 35,
                        top: 35,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.fromHex("#0FA958"),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Text(
                    textAlign: TextAlign.center,
                    "Julia",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontSize: 20,
                      height: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 22.09),
            const ChatItemWidget(
              margin: EdgeInsets.only(right: 20),
              text: "Hi I’m having trouble with my account login.",
              time: "8:51 PM",
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            const SizedBox(height: 10),
            const ChatItemWidget(
              margin: EdgeInsets.only(left: 20),
              text:
                  "Hello! I’m here to help. Can you please provide me with your account username?",
              time: "8:53 PM",
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            const SizedBox(height: 10),
            const ChatItemWidget(
              margin: EdgeInsets.only(right: 20),
              text: "Sure, my username is “User 123.”",
              time: "8:54 PM",
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            const SizedBox(height: 10),
            const ChatItemWidget(
              margin: EdgeInsets.only(left: 20),
              text:
                  "Thank you. I’ll check that for you. Please hold on for a moment.",
              time: "8:56 PM",
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            const SizedBox(height: 10),
            const ChatItemWidget(
              margin: EdgeInsets.only(left: 20),
              text:
                  "It seems your account is temporarily locked for security reasons. To unlock it, please verify your identity through the link sent to your registered email.",
              time: "8:56 PM",
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            const SizedBox(height: 10),
            const ChatItemWidget(
              margin: EdgeInsets.only(right: 20),
              text: "Alright, I’ll do that now and get back to you.",
              time: "8:56 PM",
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomTextFormField(
                width: double.maxFinite,
                height: 48,
                filled: true,
                hintText: "Reply Here...",
                hintStyle: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.fromHex("#FFFFFF").withOpacity(.5),
                ),
                fillColor: AppColors.fromHex("#050017"),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Assets.icons.emoji.svg(),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.attachment.svg(),
                      const SizedBox(width: 20),
                      Assets.icons.send.svg(),
                    ],
                  ),
                ),
                inputBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.fromHex("#28262C"),
                  ),
                  // borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({
    super.key,
    required this.margin,
    required this.text,
    required this.time,
    required this.mainAxisAlignment,
  });
  final EdgeInsets margin;
  final String text, time;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 320,
          // height: 91,
          margin: margin,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.fromHex("#28262C"),
            ),
            color: AppColors.c050017,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Text(
                // """Hi I’m having trouble with my account login.""",
                text,
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: AppColors.cFFFFFF,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    // """8:51 PM""",
                    time,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: AppColors.cFFFFFF.withOpacity(.60),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
