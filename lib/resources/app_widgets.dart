import 'package:flutter/material.dart';
import 'package:urban_culture_assessment/model/daily_skincare_model.dart';
import 'package:urban_culture_assessment/resources/app_colors.dart';
import 'package:urban_culture_assessment/resources/app_images.dart';

class DailySkinCareRow extends StatelessWidget {
  const DailySkinCareRow({
    required this.item,
    super.key,
  });

  final DailySkinCareModel item;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaterialButton(
              onPressed: () {},
              color: AppColors.peach,
              textColor: AppColors.offBlack,
              minWidth: 20,
              padding: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.check,
                size: 24,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    item.subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.cherry,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            IconButton(
              onPressed: item.onCameraIconTap.call,
              icon: Image.asset(AppImages.cameraIcon),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                item.time,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.cherry,
                ),
              ),
            ),
          ],
        ),
      );
}
