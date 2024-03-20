import 'package:flutter/material.dart';
import 'package:urban_culture_assessment/model/daily_skincare_model.dart';
import 'package:urban_culture_assessment/resources/app_widgets.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final list = [
      DailySkinCareModel(
        title: 'Cleanser',
        subtitle: 'Cetaphil Gentle Skin Cleanser',
        time: '8:00 PM',
        onCameraIconTap: () {},),
      DailySkinCareModel(
        title: 'Toner',
        subtitle: 'Thayes Witch Hazel Toner',
        time: '8:02 PM',
        onCameraIconTap: () {},),
      DailySkinCareModel(
        title: 'Moisturizer',
        subtitle: 'Kiehl\'s Ultra Facial Cream',
        time: '8:04 PM',
        onCameraIconTap: () {},),
      DailySkinCareModel(
        title: 'Sunscreen',
        subtitle: 'Supgergoop Unseen Sunscreen SPF 40',
        time: '8:06 PM',
        onCameraIconTap: () {},),
      DailySkinCareModel(
        title: 'Lip Balm',
        subtitle: 'Glossier Birthday Balm Dotcom',
        time: '8:08 PM',
        onCameraIconTap: () {},),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily Skincare',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: list.length,
            itemBuilder: (final BuildContext context, final int index) {
              final item = list[index];
              return DailySkinCareRow(item: item);
            },
        ),
      ),
    );
  }
}
