import 'package:flutter/material.dart';

class DailySkinCareModel {
  DailySkinCareModel(
      {required this.title,
      required this.subtitle,
      required this.time,
      required this.onCameraIconTap,});

  final String title;
  final String subtitle;
  final String time;
  final VoidCallback onCameraIconTap;
}
