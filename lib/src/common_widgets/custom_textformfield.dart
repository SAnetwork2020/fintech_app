import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../gen/fonts.gen.dart';
import '../utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.inputBorder,
    this.width,
    this.height,
    this.textAlign,
    this.autofocus,
    this.obscureText,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.onChanged,
    this.controller,
    this.readOnly,
    this.filled,
    this.fillColor,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.contentPadding,
    this.hintStyle,
    this.enableInteractiveSelection,
    this.onTap,
    this.enabled,
  });
  final String? hintText;
  final TextStyle? hintStyle;
  final InputBorder? inputBorder;
  final double? width, height;
  final TextAlign? textAlign;
  final bool? autofocus,
      obscureText,
      readOnly,
      filled,
      enableInteractiveSelection,
      enabled;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final TextEditingController? controller;
  final Color? fillColor;
  final Widget? suffixIcon, prefixIcon;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 325,
      // height: height ?? 50,
      child: TextFormField(
        onTap: onTap,
        enabled: enabled,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        enableInteractiveSelection: enableInteractiveSelection,
        cursorHeight: enableInteractiveSelection == false ? 0 : null,
        cursorWidth: enableInteractiveSelection == false ? 0 : 2,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        readOnly: readOnly ?? false,
        showCursor: readOnly,
        controller: controller,
        style: TextStyle(
          color: AppColors.c1DC1B4,
          fontSize: 15,
          fontFamily: FontFamily.poppins,
        ),
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        autofocus: autofocus ?? false,
        focusNode: focusNode,
        textAlign: textAlign ?? TextAlign.start,
        obscuringCharacter: "*",
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          fillColor: fillColor ?? AppColors.cFFFFFF,
          filled: filled ?? true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: hintStyle ??
              TextStyle(
                  fontFamily: FontFamily.lato,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  letterSpacing: 0.72,
                  color: AppColors.c000000.withOpacity(.8)),
          border: inputBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.c1DC1B4,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
          enabledBorder: inputBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.c1DC1B4,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
          errorBorder: inputBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.cE91515,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
          focusedBorder: inputBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.c1DC1B4,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
        ),
      ),
    );
  }
}

class ShadowTextFormField extends StatefulWidget {
  const ShadowTextFormField({
    super.key,
    this.hintText,
    this.height,
    this.width,
    this.hintStyle,
    this.suffixIcon,
    this.prefixIcon,
  });

  final String? hintText;
  final double? height, width;
  final TextStyle? hintStyle;
  final Widget? suffixIcon, prefixIcon;

  @override
  State<ShadowTextFormField> createState() => _ShadowTextFormFieldState();
}

class _ShadowTextFormFieldState extends State<ShadowTextFormField> {
  late FocusNode focusNode;
  bool show = false;

  @override
  void initState() {
    focusNode = FocusNode()
      ..addListener(() {
        if (focusNode.hasFocus) {
          show = true;
        } else {
          show = false;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 60,
      width: widget.width ?? 365,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.cFFFFFF,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 2,
                  spreadRadius: 0,
                  color: AppColors.c000000.withOpacity(.25),
                ),
              ],
            ),
            child: TextFormField(
              focusNode: focusNode,
              decoration: InputDecoration(
                suffixIcon: widget.suffixIcon,
                prefixIcon: widget.prefixIcon,
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          if (show)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: widget.width == null
                    ? 330
                    : .8 * (widget.width)!.toDouble(),
                height: 2,
                color: AppColors.c1DC1B4,
              ),
            ),
        ],
      ),
    );
    //   // ),
  }
}
