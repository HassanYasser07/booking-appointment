import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkingTimeText extends StatelessWidget {
  final String startTime;
  final String endTime;

  const WorkingTimeText(
      {super.key, required this.startTime, required this.endTime});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Working Time",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10.h),
      const SizedBox(height: 4),
      Text(
        "Monday - Friday, ${[startTime]} - ${[endTime]}",
        style: const TextStyle(fontSize: 14, color: Colors.black87),
      ),
    ]);
  }
}
