import 'package:eroyal/app/core/extentions.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EFormField extends StatefulWidget {
  const EFormField({
    super.key,
    required this.controller,
    this.onTap,
    this.validator,
    this.labelIcon,
    this.labelText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.textAlign,
    this.enable,
    this.borderRadius,
    this.style,
    this.maxLines,
    this.readOnly,
    this.borderColor,
    this.focusedColor,
    this.isCurrency = false,
    this.autoFocus = false,
    this.maxLength,
    this.onChanged,
  });

  final TextEditingController controller;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final String? labelIcon;
  final String? labelText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextAlign? textAlign;
  final bool? enable;
  final double? borderRadius;
  final TextStyle? style;
  final int? maxLines;
  final bool? readOnly;
  final Color? borderColor;
  final Color? focusedColor;
  final bool isCurrency;
  final bool autoFocus;
  final int? maxLength;
  final void Function(String)? onChanged;

  @override
  State<EFormField> createState() => _EFormFieldState();
}

class _EFormFieldState extends State<EFormField> {
  late bool _obscure;
  late FocusNode _focusNode;

  @override
  void initState() {
    _obscure = widget.keyboardType == TextInputType.visiblePassword;
    _focusNode = FocusNode();
    if (widget.isCurrency) {
      _focusNode.addListener(() {
        setState(() {});
      });
    }

    if (widget.autoFocus) _focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.removeListener(() {});
    _focusNode.dispose();
    super.dispose();
  }

  void _onChaged(String value) {
    if (widget.isCurrency) {
      String input = value;

      input = input.decodeCurrency;

      if (input.isNotEmpty) {
        input = input.encodeCurrency;

        widget.controller.value = TextEditingValue(
          text: input,
          selection: TextSelection.collapsed(offset: input.length),
        );
      } else {
        widget.controller.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      onTap: widget.onTap,
      onChanged: widget.onChanged ?? (widget.isCurrency ? _onChaged : null),
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: _obscure,
      textAlign: widget.textAlign ?? TextAlign.start,
      enabled: widget.enable,
      style: widget.style,
      maxLines: widget.maxLines ?? 1,
      maxLength: widget.maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      readOnly: widget.readOnly ?? false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: EFonts.montserrat(4, 12, greyHint),
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                icon: Icon(
                  _obscure ? Icons.visibility_off : Icons.visibility,
                  color: _obscure ? grey : primary,
                ),
              )
            : widget.suffixIcon,
        label: widget.labelText != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.labelIcon != null) ...[
                    ESvg(
                      widget.labelIcon!,
                      color: _focusNode.hasFocus ? primary : grey,
                      radius: 24,
                    ),
                    ESizedBox(
                      width: 4.w,
                    ),
                  ],
                  EText(
                    widget.labelText!,
                    style: EFonts.montserrat(
                      4,
                      _focusNode.hasFocus ? 20 : 14,
                      _focusNode.hasFocus ? primary : grey,
                    ),
                  )
                ],
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.focusedColor ?? primary,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              widget.borderRadius?.r ?? 12.r,
            ),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? primary,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? borderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
      ),
    );
  }
}
