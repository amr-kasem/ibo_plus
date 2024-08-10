// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String text;
  final String value;
  final Widget icon;
  final void Function()? onPressed;
  const SettingsTile({
    super.key,
    required this.text,
    required this.value,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FilledButton.tonal(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [icon, Text(text).tr(), Text(value).tr()],
        ),
      ),
    );
  }
}
