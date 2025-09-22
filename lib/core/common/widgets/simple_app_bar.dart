import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors.dart';
import '../../theme/font_size.dart';
import '../../theme/text_styles.dart';

class SimpleAppBar extends StatelessWidget {
  final String title;
  final void Function()? onBackPress;

  const SimpleAppBar({super.key, required this.title, this.onBackPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [SizedBox(width: 24.w)]),

        // SizedBox(width: 12.w),
        Text(
          title,
          style: kTextStyleDMSans600.copyWith(
            color: AppColors.kColorBottomAppPlusBotton,
            fontSize: FontSize.f24,
          ),
        ),
      ],
    );
  }
}
