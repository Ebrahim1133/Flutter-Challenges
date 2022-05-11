import 'package:flutter/material.dart';

class FlatPrimaryButton extends StatelessWidget {
  final Color? backgroundColor;
  final String? text;
  final Color? color;
  final double? contentSize;
  final double? textSize;
  final VoidCallback? onPressed;
  final bool? enabled;
  final TextAlign? textAlign;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  // ignore: use_key_in_widget_constructors
  const FlatPrimaryButton(
      {this.color,
      this.backgroundColor,
      this.contentSize,
      this.textSize,
      this.text,
      this.onPressed,
      this.enabled,
      this.textAlign,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    Function btnOnPressed() {
      if (enabled != null && enabled == false) {
        // ignore: avoid_init_to_null
        var nothing = null;
        return nothing;
      } else {
        return onPressed!;
      }
    }

    Widget prefixIconWidget() {
      if (prefixIcon != null) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
          ),
          child: Icon(
            prefixIcon,
            color: color ?? Colors.white,
            size: contentSize ?? 20.0,
          ),
        );
      } else {
        return Container();
      }
    }

    Widget suffixIconWidget() {
      if (suffixIcon != null) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: Icon(
            suffixIcon,
            color: color ?? Colors.white,
            size: contentSize ?? 20.0,
          ),
        );
      } else {
        return Container();
      }
    }

    return GestureDetector(
      onTap: btnOnPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(
          16.0,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            prefixIconWidget(),
            Expanded(
              child: Text(
                text ?? "Primary Button",
                style: TextStyle(
                  color: color ?? Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: textSize ?? 16.0,
                ),
                textAlign: textAlign ?? TextAlign.center,
              ),
            ),
            suffixIconWidget(),
          ],
        ),
      ),
    );
  }
}
