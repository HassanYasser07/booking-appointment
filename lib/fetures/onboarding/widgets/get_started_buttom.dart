import 'package:booking_appointment/core/routing/style.dart';
import 'package:booking_appointment/core/theme/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsMaster.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 52)
      ),
          shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      )
      )
      ),
        onPressed: (){},
        child: Text('Get Started',style:Styles.font16white), );
  }
}
