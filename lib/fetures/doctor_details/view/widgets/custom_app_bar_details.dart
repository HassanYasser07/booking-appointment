import 'package:flutter/material.dart';

import '../../../../core/theme/style.dart';
class CustomAppBarDetails extends StatelessWidget {
  final String doctorName;
  const CustomAppBarDetails({super.key, required this.doctorName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              doctorName,
              style: Styles.font18DDarkBlueBold,
            ),
          ),
        ),
        const SizedBox(width: 48),
      ],
    );

  }
}
