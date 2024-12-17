import 'package:flutter/material.dart';
import 'package:oynani_scroll_qilish/utils/app_colors.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  const DefaultText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: color ?? AppColors.adaptiveTextColor(context),
      ),
    );
  }
}
